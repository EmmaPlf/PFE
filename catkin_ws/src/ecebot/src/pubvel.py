#!/usr/bin/env python
# license removed for brevity

import random, math
import rospy
from geometry_msgs.msg import Twist, Point
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry

v = 0.0
omega = 1.0
xp = 0.0
yp = 0.0
T = 0.05

def callback_husky(data):
    global v, omega, T

    x = data.pose.pose.position.x
    y = data.pose.pose.position.y
    qw = data.pose.pose.orientation.w
    qz = data.pose.pose.orientation.z

    xp = 5
    yp = 0
    kp = 0.5
    kv = 0.5

    yaw = math.atan2(2 * qw * qz, 1 - 2 * qz * qz)
    
    phi = math.atan2(yp - y, xp - x)
    delta = yaw - phi
    if (delta > math.pi):
        delta -= 2 * math.pi
    if (delta < -math.pi):
        delta += 2 * math.pi

    if (omega > 0.5):
        omega = 0.5
    else:
        omega = -kp * delta

    dk = math.sqrt(math.pow(xp - x, 2) + math.pow(yp - y, 2))
    if(dk < 0.1):
        dk = 0

    if (v > 0.5):
        v = 0.5
    else:
        v = kv * dk

def sender():
    global v, omega, T
    rospy.init_node('talker', anonymous=True)
    sub = rospy.Subscriber('tb3_0/odom/', Odometry, callback_husky)
    pub = rospy.Publisher('tb3_0/cmd_vel/', Twist, queue_size=10)
    rate = rospy.Rate(1/T)
    while not rospy.is_shutdown():
        msg = Twist()
        msg.linear.x = v
        msg.angular.z = omega
        pub.publish(msg)
        rospy.loginfo("sent omega = %s", omega)
        rospy.loginfo("sent v = %s", v)
        rate.sleep()

if __name__ == '__main__':
    try:
        sender()
    except rospy.ROSException:
        pass