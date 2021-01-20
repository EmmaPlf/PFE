#!/usr/bin/env python
# license removed for brevity

## CODE TRAJECTOIRE / suivi de convoi
import rospy
import numpy as np
from math import atan2
from math import sqrt
from math import pi
from math import cos
from math import sin
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry

v=0.0
omega=0.0
xp=0.0
yp=0.0
T = 0.05
phi = 0.0
err_angle_prec = 0
err_angle = 0
err_vit_prec = 0
err_vit = 0
# r1_ref = np.zeros([1, 2])
r1_ref = np.array([[-0.5, 0]])

# def set_references():
#     global compteur_dir, compteur_point, xp, yp

#     if(compteur_point>20 and (compteur_dir==0 or compteur_dir==1 or compteur_dir==3 or compteur_dir==4)):
#         compteur_point=0
#         compteur_dir+=1

#     if(compteur_point>40 and compteur_dir==2):
#         compteur_point=0
#         compteur_dir+=1


#     if(compteur_dir==0):
#         xp=liste_dir[compteur_dir][compteur_point]
#         yp=0

#     if(compteur_dir==1):
#         xp=2
#         yp=liste_dir[compteur_dir][compteur_point]

#     if(compteur_dir==2):
#         xp=liste_dir[compteur_dir][compteur_point]
#         yp=2

#     if(compteur_dir==3):
#         xp=-2
#         yp=liste_dir[compteur_dir][compteur_point]
    
#     if(compteur_dir==4):
#         xp=liste_dir[compteur_dir][compteur_point]
#         yp=0

#     if(compteur_dir>4):
#         compteur_dir = 0

#     return xp, yp


def callback_odom_r1(data):
    global v, omega, r1_ref, phi, err_angle, err_angle_prec,err_vit, err_vit_prec
    
    x=data.pose.pose.position.x
    y=data.pose.pose.position.y
    qw=data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z
    
       #angle de lacet
    theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
    
    xp = r1_ref[0, 0]
    yp = r1_ref[0, 1]
    print("xp = ", xp)
    print("yp = ", yp)

    vmax=1 #0.75
    kp_angle = 1.3
    kd_angle = 1.8

    kp_vit = 1.3
    kd_vit = 1.4
    #print("xp-x",xp-x)
    #print("yp-y",yp-y)
    phi=atan2((yp-y),(xp-x))
    d=sqrt((xp-x)**2+(yp-y)**2)

    delta= theta - phi 
    err_angle = delta

    if delta>pi:
        delta-=2*pi
    if delta<-pi:
        delta+=2*pi

    omega = -kp_angle * delta + kd_angle * (err_angle - err_angle_prec)
    err_angle_prec = err_angle

    if(d<0.5):
        #d=0
        r1_ref = np.delete(r1_ref, 0, axis=0)

    err_vit = d
    if v > vmax:
        v=vmax
    else:
        v = kp_vit * d + kd_vit * (err_vit - err_vit_prec)
    err_vit_prec = err_vit

    # kp=1 #0.75
    # kv=1.25#1
    # vmax=1 #0.75
    # #print("xp-x",xp-x)
    # #print("yp-y",yp-y)
 
    # phi=atan2((yp-y),(xp-x))
    # d=sqrt((xp-x)**2+(yp-y)**2)

    # delta= theta - phi
    
    # if delta>pi:
    #     delta-=2*pi
    # if delta<-pi:
    #     delta+=2*pi
    
    # omega = -kp*delta
    # if(d<0.5):
    #     r1_ref = np.delete(r1_ref, 0, axis=0)

    # if v > vmax:
    #     v=vmax
    # else:
    #     v= kv*d

def callback_cam(data):
    global r1_ref

    # id_robot = data.dest
    robot_rang = 1
    # interdistance = data.interdistance
    interdistance = 0.1
    # v_len = data.vehicle_length.value
    # head_pos_x = data.reference_position.longitude # a verifier
    # head_pos_y = data.reference_position.lattitude  # a verifier
    head_pos_x = data.pose.pose.position.x
    head_pos_y = data.pose.pose.position.y

    # r1_pos_x = head_pos_x
    # r1_pos_y = head_pos_y

    # xp_prev = r1_ref[-1,0]
    # yp_prev = r1_ref[-1,1]
    # cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
    # r1_pos_x = head_pos_x - (interdistance * robot_rang) * cos(cap)
    # r1_pos_y = head_pos_y - (interdistance * robot_rang) * sin(cap)
    # r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)
    r1_ref = np.append(r1_ref, [[head_pos_x, head_pos_y]], axis=0)



def talker():
    global v, omega
    rospy.init_node('talker', anonymous=True)

    cam_msg = rospy.Subscriber('tb3_0/odom', Odometry, callback_cam)
    vel_r1 = rospy.Publisher('tb3_1/cmd_vel', Twist, queue_size=10)
    # vel_t2 = rospy.Publisher('tb3_2/cmd_vel', Twist, queue_size=10)
    odom_r1 = rospy.Subscriber('tb3_1/odom', Odometry, callback_odom_r1)
    # odom_t2 = rospy.Subscriber('tb3_2/odom', Odometry, callback)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        speed=Twist()
        speed.linear.x=v
        speed.angular.z=omega
        print(speed)
        # print("compteur_point:",compteur_point)
        # print("compteur_dir:",compteur_dir)
        vel_r1.publish(speed)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass