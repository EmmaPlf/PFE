import random, math
import rospy
from geometry_msgs.msg import Twist, Point, Vector3Stamped
from turtlesim.msg import Pose
from nav_msgs.msg import Odometry
from sensor_msgs.msg import Imu

T = 0.1

def sender():
    global v, omega, T
    rospy.init_node('talker', anonymous=True)

    pub = rospy.Publisher('/cmd_vel/', Twist, queue_size=10)

    rate = rospy.Rate(1/T)
    try:
        while True:
            msg = Twist()
            msg.linear.x = 2
            msg.angular.z = 0
            pub.publish(msg)
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