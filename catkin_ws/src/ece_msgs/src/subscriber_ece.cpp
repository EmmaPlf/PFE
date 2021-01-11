#include "../../devel/include/ece_msgs/ecemsg.h"
#include "ros/ros.h"
#include <sstream>

void messageCallback(const ece_msgs::ecemsg::ConstPtr &msg) {

  ROS_INFO("I have received: [%d]", msg->insertion.confirmation_insertion);
}

int main(int argc, char **argv) {

  ros::init(argc, argv, "subscriber_ece");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_ece", 1000, messageCallback);
  ros::spin();
  return 0;
}