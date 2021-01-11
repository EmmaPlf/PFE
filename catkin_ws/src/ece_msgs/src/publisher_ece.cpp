#include "../../devel/include/ece_msgs/ecemsg.h"
#include "ros/ros.h"
#include <sstream>

int main(int argc, char **argv) {

  ros::init(argc, argv, "publisher_ece");
  ros::NodeHandle n;
  // changer type message
  ros::Publisher pub = n.advertise<ece_msgs::ecemsg>("topic_ece", 1000);
  ros::Rate loop_rate(10);

  ece_msgs::ecemsg msg;

  msg.insertion.confirmation_insertion = true;

  while (ros::ok()) {

    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
