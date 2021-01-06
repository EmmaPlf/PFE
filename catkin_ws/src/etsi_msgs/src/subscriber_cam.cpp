#include "../../devel/include/etsi_msgs/CAM.h"
#include "ros/ros.h"

// Permet de récupérer les infos du message CAM
void messageCallback(const etsi_msgs::CAM::ConstPtr &msg) {
  ROS_INFO("I have received a message cam");
  ROS_INFO("/n count: [%d]", msg->header.seq);
}

int main(int argc, char **argv) {
  ROS_INFO("Sub on");
  ros::init(argc, argv, "subscriber_cam");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_cam", 1000000, messageCallback);
  ros::spin();
  return 0;
}