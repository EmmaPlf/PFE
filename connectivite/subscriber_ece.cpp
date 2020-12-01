#include "ros/ros.h"
#include "beginner_tutorials/ecemsg.h"
 
void messageCallback(const beginner_tutorials::ecemsg::ConstPtr& msg) {
  ROS_INFO("I have received: [%d] [%d]", msg->data[0], msg->data[1]);
}
 
int main(int argc, char **argv) {
  ros::init(argc, argv, "subscriber ece");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic ece", 1000, messageCallback);
  ros::spin();
  return 0;
}