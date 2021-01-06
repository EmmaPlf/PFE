#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"

void messageCallback(const etsi_msgs::DENM::ConstPtr &msg) {
  ROS_INFO("I have received a message denm : count : [%d]", msg->header.seq);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "subscriber_denm");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_denm", 1000, messageCallback);
  ros::spin();
  return 0;
}