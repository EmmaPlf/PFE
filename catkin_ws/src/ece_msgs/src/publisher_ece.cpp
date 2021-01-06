#include "../../devel/include/ece_msgs/ecemsg.h"
#include "ros/ros.h"
#include <iostream>
#include <ros/console.h>
#include <sstream>
using namespace std;

int main(int argc, char **argv) {

  ros::init(argc, argv, "publisher_ece");
  ros::NodeHandle n;
  // changer type message
  ros::Publisher pub = n.advertise<ece_msgs::ecemsg>("topic_ece", 1000);
  ros::Rate loop_rate(10);

  ece_msgs::ecemsg msg;

  while (ros::ok()) {

    // Ouvrir et lire fichier avec message encodé

    // Stocker le stream dans data du message ece ROS
    msg.data.push_back(0);
    msg.data.push_back(1);
    
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
