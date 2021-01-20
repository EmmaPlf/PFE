#!/usr/bin/env python
# license removed for brevity

## CODE TRAJECTOIRE / PATH POUR TURTLEBOT3
import rospy
import numpy as np
from math import atan2
from math import sqrt
from math import pi
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry

v=0.0
omega=0.0
xp=0.0
yp=0.0
T=0.05
compteur_point=0
compteur_dir=0
liste_dir=[]

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
    global v, omega, xp, yp, compteur_point
    
    x=data.pose.pose.position.x
    y=data.pose.pose.position.y
    qw=data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z
    
       #angle de lacet
    theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
    
    xp, yp = set_references()

    kp=1 #0.75
    kv=1 #1
    vref=1 #0.75
    #print("xp-x",xp-x)
    #print("yp-y",yp-y)
 
    phi=atan2((yp-y),(xp-x))
    d=sqrt((xp-x)**2+(yp-y)**2)

    delta= theta - phi 
    
    if delta>pi:
        delta-=2*pi
    if delta<-pi:
        delta+=2*pi
    
    omega = -kp*delta
    if(d<0.5):
        #d=0
        compteur_point+=1

    if v > vref:
        v=vref
    else:
        v= kv*d

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
    print(liste_dir)

def talker():
    global v, omega, compteur_point, compteur_dir
    rospy.init_node('talker', anonymous=True)

    pub = rospy.Publisher('tb3_0/cmd_vel', Twist, queue_size=10)
    sub = rospy.Subscriber('tb3_0/odom', Odometry, callback)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        speed=Twist()
        speed.linear.x=v
        speed.angular.z=omega 
        print(speed)
        print("compteur_point:",compteur_point)
        print("compteur_dir:",compteur_dir)
        pub.publish(speed)
        rate.sleep()

if __name__ == '__main__':
    try:
        create_path()
        talker()
    except rospy.ROSInterruptException:
        pass
 