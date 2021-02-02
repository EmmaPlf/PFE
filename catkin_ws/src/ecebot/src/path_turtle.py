#!/usr/bin/env python
# license removed for brevity

## CODE TRAJECTOIRE / PATH POUR TURTLEBOT3
import sys
import rospy
import numpy as np
from math import atan2, sqrt, pi
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32
from simu_msgs.msg import simu_ECE

v=0.0
omega=0.0
xp=0.0
yp=0.0
T=0.05
compteur_point=0
compteur_dir=0
liste_dir = []
err_angle_prec = 0
err_angle = 0
err_vit_prec = 0
err_vit = 0
err_traj_x = 0
err_traj_y = 0
green_light = True
phase = 0

def set_references():
    global compteur_dir, compteur_point, xp, yp

    if(compteur_point>20 and (compteur_dir==0 or compteur_dir==1 or compteur_dir==3 or compteur_dir==4)):
        compteur_point=0
        compteur_dir+=1

    if(compteur_point>40 and compteur_dir==2):
        compteur_point=0
        compteur_dir+=1


    if(compteur_dir==0):
        xp=liste_dir[compteur_dir][compteur_point]
        yp=0

    if(compteur_dir==1):
        xp=2
        yp=liste_dir[compteur_dir][compteur_point]

    if(compteur_dir==2):
        xp=liste_dir[compteur_dir][compteur_point]
        yp=2

    if(compteur_dir==3):
        xp=-2
        yp=liste_dir[compteur_dir][compteur_point]
    
    if(compteur_dir==4):
        xp=liste_dir[compteur_dir][compteur_point]
        yp=0

    if(compteur_dir>4):
        compteur_dir = 0

    return xp, yp


def callback(data):
    global v, omega, xp, yp, compteur_point, err_angle, err_angle_prec,err_vit, err_vit_prec, err_traj_x, err_traj_y
    
    x=data.pose.pose.position.x
    y=data.pose.pose.position.y
    qw=data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z
    
       #angle de lacet
    theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
    
    xp, yp = set_references()

    vmax=1#0.75
    kp_angle = 1.6
    kd_angle = 1.8

    kp_vit = 1
    kd_vit = 1.4

    phi=atan2((yp-y),(xp-x))
    d = sqrt((xp - x)** 2 + (yp - y)** 2)
    
    # err_traj_x=xp-x
    err_traj_x=x
    # err_traj_y=yp-y
    err_traj_y=y

    delta= theta - phi 
    err_angle = delta

    if delta>pi:
        delta-=2*pi
    if delta<-pi:
        delta+=2*pi

    omega = -kp_angle * delta + kd_angle * (err_angle - err_angle_prec)
    err_angle_prec = err_angle

    if(d<0.5):
        compteur_point += 1

    err_vit = d
    if v > vmax:
        v=vmax
    else:
        v = kp_vit * d + kd_vit * (err_vit - err_vit_prec)
    err_vit_prec = err_vit

def create_path():
    a0= np.arange(0,2.1,0.1,dtype=float)
    a1= np.arange(0,2.1,0.1,dtype=float)
    a2= np.arange(-2,2.1,0.1,dtype=float)
    a2[::-1]=a2
    a3= np.arange(0,2.1,0.1,dtype=float)
    a3[::-1]=a3
    a4= np.arange(-2,0.1,0.1,dtype=float)
    liste_dir.append(a0)
    liste_dir.append(a1)
    liste_dir.append(a2)
    liste_dir.append(a3)
    liste_dir.append(a4)
    #print(liste_dir)

def callback_ece(data):
    global green_light, phase
    green_light = data.permission
    phase = data.phase

def talker():
    global v, omega, compteur_point, compteur_dir, err_traj_x, err_traj_y
    rospy.init_node('talker', anonymous=True)

    ece_msg = rospy.Subscriber('vehicles_simu_ECE', simu_ECE, callback_ece)
    pub = rospy.Publisher('tb3_0/cmd_vel', Twist, queue_size=10)
    trajectoire_pub_x = rospy.Publisher('erreur_trajectoire_x', Float32, queue_size=10)
    trajectoire_pub_y = rospy.Publisher('erreur_trajectoire_y', Float32, queue_size=10)
    sub = rospy.Subscriber('tb3_0/odom', Odometry, callback)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        speed = Twist()
        if green_light == True or phase == 2:
            # print("if, 1")
            speed.linear.x=v
            speed.angular.z = omega
        elif green_light == False and phase != 2:
            # print("elif, 1")
            speed.linear.x=0
            speed.angular.z=0
        pub.publish(speed)
        trajectoire_pub_x.publish(err_traj_x)
        trajectoire_pub_y.publish(err_traj_y)
        rate.sleep()

if __name__ == '__main__':
    try:
        create_path()
        talker()
    except rospy.ROSInterruptException:
        pass
 