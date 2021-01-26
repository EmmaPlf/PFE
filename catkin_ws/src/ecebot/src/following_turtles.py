#!/usr/bin/env python
# license removed for brevity

## CODE TRAJECTOIRE / suivi de convoi
import rospy
import numpy as np
import sys
import genpy
from math import atan2
from math import sqrt
from math import pi
from math import cos
from math import sin
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry
from simu_msgs.msg import simu_CAM
from std_msgs.msg import Float32

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
r4_path = np.zeros([0,2])
a0=np.arange(-0.5,0.5,0.1)
robot_destinations = np.array([[-0.5,0],[-0.4,0],[-0.3,0],[-0.2,0],[-0.1,0],[0,0], [0.1, 0], [0.2, 0], [0.3, 0], [0.4, 0]])
mean = 0
theta_prec = 0
turning = False
theta_vit = 0
delay = 0.0
x = 0.0
y = 0.0
following = False
old_last_pos_x = 0.0
old_last_pos_y = 0.0
dist_r3 = 0.0
xp_r3 = 0.0
yp_r3 = 0.0
err = 3

def callback_odom(data):
    global v, omega, r1_ref, phi, err_angle, err_angle_prec,err_vit, err_vit_prec, theta_prec, mean, turning, theta_vit, robot_destinations, arg_bot, x, y, r4_path, dist_r3, err
    
    x=data.pose.pose.position.x
    y=data.pose.pose.position.y
    qw=data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z

    if arg_bot != 4:
        
        #angle de lacet
        theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
        
        xp = r1_ref[0, 0]
        yp = r1_ref[0, 1]
        vmax = 1  #0.75
        kp_angle = 1.6
        kd_angle = 1.8

        kp_vit = 1
        kd_vit = 1.4
        # kp_angle = 1.3
        # kd_angle = 2

        # kp_vit = 1.3
        # kd_vit = 1.6
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
    elif arg_bot == 4 and following == True:
        #angle de lacet
        theta = atan2(2 * qw * qz, 1 - (2 * qz * qz))
        xp = r4_path[0, 0]
        yp = r4_path[0, 1]
        vmax = 0.5  #0.75
        kp_angle = 1.6
        kd_angle = 1.8

        kp_vit = 1
        kd_vit = 1.4
        # kp_angle = 1.3
        # kd_angle = 2

        # kp_vit = 1.3
        # kd_vit = 1.6
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
            if np.size(r4_path,0)!=1:
                r4_path = np.delete(r4_path, 0, axis=0)

        err_vit = d
        if v > vmax:
            v=vmax
        else:
            v = kp_vit * d + kd_vit * (err_vit - err_vit_prec)
        err_vit_prec = err_vit
        err = (sqrt((xp_r3 - x)** 2 + (yp_r3 - y)** 2)) - dist_r3
        print("xp_r3 = ", xp_r3)
        print("yp_r3 = ", yp_r3)
        print("dist_r3 = ", dist_r3)
        print("err = ", err)
    elif arg_bot == 4 and following == False:
        err = (sqrt((xp_r3 - x)** 2 + (yp_r3 - y)** 2)) - dist_r3
        print("xp_r3 = ", xp_r3)
        print("yp_r3 = ", yp_r3)
        print("dist_r3 = ", dist_r3)
        print("err = ", err)




def callback_cam(data):
    global r1_ref, mean, robot_destinations, following, r4_path, old_last_pos_x, old_last_pos_y, dist_r3

    send_time = data.header.stamp
    reception_time = rospy.get_rostime()
    delay = reception_time - send_time
    # print("send_time:", send_time, " and reception time:", reception_time)
    id_robot = data.dest
    interdistance = float(data.interdistance) / 1024

    # print("data.dest = ", data.dest)

    if arg_bot == id_robot and id_robot != 4:
        # v_len = data.vehicle_length.value
        last_pos_x = float(data.reference_position.latitude) / 1024
        last_pos_y = float(data.reference_position.longitude) / 1024
        xp_prev = r1_ref[-1,0]
        yp_prev = r1_ref[-1, 1]
        cap = atan2((last_pos_y - yp_prev), (last_pos_x - xp_prev))
        r1_pos_x = last_pos_x - (interdistance) * cos(cap)
        r1_pos_y = last_pos_y - (interdistance) * sin(cap)
        r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)
        if id_robot == 3:
            dist_r3 = sqrt((x - last_pos_x)** 2 + (y - last_pos_y)** 2)

    if arg_bot == 4 and id_robot == 4:
        last_pos_x = float(data.reference_position.latitude) / 1024
        last_pos_y = float(data.reference_position.longitude) / 1024
        d = sqrt((x - last_pos_x)** 2 + (y - last_pos_y)** 2)
        if (d < 1 and (x - last_pos_x) > 0.5) or following == True:
            cap = atan2((last_pos_y - old_last_pos_y), (last_pos_x - old_last_pos_x))
            r1_pos_x = last_pos_x - (interdistance) * cos(cap)
            r1_pos_y = last_pos_y - (interdistance) * sin(cap)
            r4_path = np.append(r4_path, [[r1_pos_x, r1_pos_y]], axis=0)
            following = True
        old_last_pos_x = last_pos_x
        old_last_pos_y = last_pos_y


    # if arg_bot == id_robot:
    #     robot_rang = data.rank
    #     interdistance = float(data.interdistance) / 1024
    #     yawrate_head = float(data.yaw_rate) / 1024
    #     head_pos_x = float(data.reference_position.latitude) / 1024
    #     head_pos_y = float(data.reference_position.longitude) / 1024
    #     distance = 0.0
    #     # mean = 0.18 * yawrate_head + 0.82 * mean
    #     r1_ref = np.append(r1_ref, [[head_pos_x, head_pos_y]], axis=0)
    #     #chercher un point a ajouter a la liste des destinations grace a l'interdistance
    #     for elem in r1_ref[::-1]:
    #         # distance = sqrt((elem[0] - r1_ref[-1, 0])** 2 + (elem[1] - r1_ref[-1, 1])** 2)
    #         distance = sqrt((elem[0] - head_pos_x)** 2 + (elem[1] - head_pos_y)** 2)
    #         # print("elem =", elem)
    #         # print("robot_dim = ", np.shape(robot_destinations))
    #         # print("elem dim = ", np.shape(elem))
    #         if distance >= interdistance * robot_rang and distance <= interdistance * robot_rang + 0.1:
    #             # if not (elem in robot_destinations):
    #             robot_destinations = np.append(robot_destinations, [elem], axis=0)
    #             break
        
        # print("distance argbot ", arg_bot , " = ", distance)
        # if arg_bot == 4:
        #     print(robot_destinations[-1])

        #cap = atan2((head_pos_y - yp_prev), (head_pos_x - xp_prev))
        #r1_pos_x = head_pos_x - ((interdistance * robot_rang) * cos(cap))
        #r1_pos_y = head_pos_y - ((interdistance * robot_rang) * sin(cap))
        #r1_ref = np.append(r1_ref, [[r1_pos_x, r1_pos_y]], axis=0)

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

def callback_dist_r3(msg):
    global dist_r3
    dist_r3 = float(msg.data)

def callback_pose_r3(msg):
    global xp_r3, yp_r3
    xp_r3 = msg.x
    yp_r3 = msg.y

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
        # delay_graph = rospy.Publisher('delay', Duration, queue_size=10)
        vel_t2 = rospy.Publisher('tb3_2/cmd_vel', Twist, queue_size=10)
        odom_t2 = rospy.Subscriber('tb3_2/odom', Odometry, callback_odom)
        dist_r3_pub = rospy.Publisher('dist_r3', Float32, queue_size=10)
        pose_r3_pub = rospy.Publisher('pose_r3', Point, queue_size=10)
    elif arg_bot == 4:
        odom_t3 = rospy.Subscriber('tb3_3/odom', Odometry, callback_odom)
        dist_r3_sub = rospy.Subscriber('dist_r3', Float32, callback_dist_r3)
        vel_t3 = rospy.Publisher('tb3_3/cmd_vel', Twist, queue_size=10)
        pose_r3_pub = rospy.Subscriber('pose_r3', Point, callback_pose_r3)
        err_pub = rospy.Publisher('err', Float32, queue_size=10)



    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        speed=Twist()
        speed.linear.x=v
        speed.angular.z=omega
        if arg_bot == 2:
            vel_t1.publish(speed)
        elif arg_bot == 3:
            point_r3 = Point()
            point_r3.x = x
            point_r3.y = y
            vel_t2.publish(speed)
            dist_r3_pub.publish(dist_r3)
            pose_r3_pub.publish(point_r3)
            # delay_graph.publish(delay)
        elif arg_bot == 4:
            err_pub.publish(err)
            if following == True:
                vel_t3.publish(speed)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker(sys.argv[1])
    except rospy.ROSInterruptException:
        pass