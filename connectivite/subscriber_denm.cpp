#include "ros/ros.h"
#include "messages_denm/DENM.h"
 
void messageCallback(const messages_denm::DENM::ConstPtr& msg) 
{
  ROS_INFO("I have received a message denm : has situation : [%d]", msg.has_situation);
}
 
int main(int argc, char **argv) 
{
  ros::init(argc, argv, "subscriber_denm");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic_denm", 1000, messageCallback);
  ros::spin();
  return 0;
}