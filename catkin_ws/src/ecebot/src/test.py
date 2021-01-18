#!/usr/bin/env python

# script marche chez moi avec python 2.7
import random, math
import rospy
from geometry_msgs.msg import Twist, Point, Vector3Stamped
from nav_msgs.msg import Odometry
from sensor_msgs.msg import Imu

T = 0.1

def sender():
    global v, omega, T
    rospy.init_node('talker', anonymous=True)

    pub0 = rospy.Publisher('tb3_0/cmd_vel/', Twist, queue_size=10)
    pub1 = rospy.Publisher('tb3_1/cmd_vel/', Twist, queue_size=10)
    pub2 = rospy.Publisher('tb3_2/cmd_vel/', Twist, queue_size=10)

    rate = rospy.Rate(1/T)
    try:
        while not rospy.is_shutdown():
            msg0 = Twist()
            msg0.linear.x = 0.5
            msg0.angular.z = 0
            pub0.publish(msg0)

            msg1 = Twist()
            msg1.linear.x = 2
            msg1.angular.z = 0
            pub1.publish(msg1)

            msg2 = Twist()
            msg2.linear.x = 1
            msg2.angular.z = 0
            pub2.publish(msg2)
            # rospy.loginfo("sent omega = %s", omega)
            # rospy.loginfo("sent v = %s", v)
            rate.sleep()
    except KeyboardInterrupt:
        pass

if __name__ == '__main__':
    try:
        sender()
    except rospy.ROSException:
        pass