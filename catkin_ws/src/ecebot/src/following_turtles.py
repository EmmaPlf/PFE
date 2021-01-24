#!/usr/bin/env python
# license removed for brevity

## CODE TRAJECTOIRE / suivi de convoi
import rospy
import numpy as np
import sys
from math import atan2
from math import sqrt
from math import pi
from math import cos
from math import sin
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry
from simu_msgs.msg import simu_CAM

v=0.0
omega=0.0
xp=0.0
yp=0.0
T = 0.05
arg_bot = 0
phi = 0.0
err_angle_prec = 0
err_angle = 0
err_vit_prec = 0
err_vit = 0
r1_ref = np.array([[-0.5, 0]])
mean = 0
theta_prec = 0
turning = False
theta_vit = 0
# theta = 0

def callback_odom(data):
    global v, omega, r1_ref, phi, err_angle, err_angle_prec,err_vit, err_vit_prec, theta_prec, mean, turning, theta_vit
    
    x=data.pose.pose.position.x
    y=data.pose.pose.position.y
    qw=data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z
    
       #angle de lacet
    theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
    # theta_vit = theta_prec - theta
    # mean = 0.18 * theta_vit + 0.82 * mean
    # theta_prec = theta

    # print("mean = ", abs(mean))
    # if abs(mean) > 0.020:
    #     print("turning")
    #     turning = True
    # else:
    #     print("straight line")
    #     turning = False

    xp = r1_ref[0, 0]
    yp = r1_ref[0, 1]

    # if arg_bot == 3:
    #     print("xp = ", xp)
    #     print("yp = ", yp)

    vmax=1 #0.75
    kp_angle = 1.5
    kd_angle = 1.3

    kp_vit = 1.5
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
        if np.size(r1_ref,0)!=1:
            r1_ref = np.delete(r1_ref, 0, axis=0)

    err_vit = d
    if v > vmax:
        v=vmax
    else:
        v = kp_vit * d + kd_vit * (err_vit - err_vit_prec)
    err_vit_prec = err_vit


def callback_cam(data):
    global r1_ref

    id_robot = data.dest
    print("data.dest = ", data.dest)
    if arg_bot == id_robot:
        robot_rang = data.rank
        interdistance = float(data.interdistance) / 1024
        yawrate_head = float(data.yaw_rate) / 1024
        head_pos_x = float(data.reference_position.latitude) / 1024
        head_pos_y = float(data.reference_position.longitude) / 1024

        # mean = 0.18 * yawrate_head + 0.82 * mean

        xp_prev = r1_ref[-1,0]
        yp_prev = r1_ref[-1,1]
        cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        r1_pos_x = head_pos_x - ((interdistance * robot_rang) * cos(cap))
        r1_pos_y = head_pos_y - ((interdistance * robot_rang) * sin(cap))
        r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)

        # r1_ref = np.append(r1_ref, [[head_pos_x, head_pos_y]], axis=0)
        # print("mean = ", mean)

        # print("angle_vit = ", theta_vit)
        # if turning == False:
        #     xp_prev = r1_ref[-1,0]
        #     yp_prev = r1_ref[-1, 1]
        #     cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        #     r1_pos_x = head_pos_x - ((interdistance * robot_rang) * cos(cap))
        #     r1_pos_y = head_pos_y - ((interdistance * robot_rang) * sin(cap))
        #     r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)
        # else:
        #     xp_prev = r1_ref[-1,0]
        #     yp_prev = r1_ref[-1,1]
        #     cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        #     r1_pos_x = head_pos_x - ((abs(theta_vit) * 30 * robot_rang) * cos(cap))
        #     r1_pos_y = head_pos_y - ((abs(theta_vit) * 30 * robot_rang) * sin(cap))
        #     r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)

        # if mean > 0.8: # ne tourne pas
        #     print("turning")
        #     xp_prev = r1_ref[-1,0]
        #     yp_prev = r1_ref[-1,1]
        #     cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        #     r1_pos_x = head_pos_x - ((interdistance * robot_rang) * cos(cap))
        #     r1_pos_y = head_pos_y - ((interdistance * robot_rang) * sin(cap))
        #     r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)
        #     # r1_ref = np.append(r1_ref, [[head_pos_x, head_pos_y]], axis=0)
        # else: # tourne
        #     xp_prev = r1_ref[-1,0]
        #     yp_prev = r1_ref[-1,1]
        #     cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        #     r1_pos_x = head_pos_x - ((0.6 * robot_rang) * cos(cap))
        #     r1_pos_y = head_pos_y - ((0.6 * robot_rang) * sin(cap))
        #     r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)


def talker(arg):
    global v, omega, arg_bot
    rospy.init_node('talker', anonymous=True)
    arg_bot = int(arg)
    cam_msg = rospy.Subscriber('vehicles_simu_CAM', simu_CAM, callback_cam)
    #on publish sur le bon topic pour le robot correspondant
    if arg_bot == 2:
        vel_t1 = rospy.Publisher('tb3_1/cmd_vel', Twist, queue_size=10)
        odom_t1 = rospy.Subscriber('tb3_1/odom', Odometry, callback_odom)
    elif arg_bot == 3:
        vel_t2 = rospy.Publisher('tb3_2/cmd_vel', Twist, queue_size=10)
        odom_t2 = rospy.Subscriber('tb3_2/odom', Odometry, callback_odom)
    elif arg_bot == 4:
        vel_t3 = rospy.Publisher('tb3_3/cmd_vel', Twist, queue_size=10)
        odom_t3 = rospy.Subscriber('tb3_3/odom', Odometry, callback_odom)

    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        speed=Twist()
        speed.linear.x=v
        speed.angular.z=omega
        #print(speed)
        # print("compteur_point:",compteur_point)
        # print("compteur_dir:",compteur_dir)
        if arg_bot == 2:
            vel_t1.publish(speed)
        elif arg_bot == 3:
            vel_t2.publish(speed)
        elif arg_bot == 4:
            vel_t3.publish(speed)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker(sys.argv[1])
    except rospy.ROSInterruptException:
        pass