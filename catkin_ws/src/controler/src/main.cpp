#include "../include/Controler.h"
#include "ros/ros.h"

int main(int argc, char **argv) {

  ros::init(argc, argv, "controler");
  ROS_INFO("Controler lance");

  Controler c = Controler();

  ros::Rate loop_rate(5);

  while (ros::ok()) {
    ros::spinOnce();
    loop_rate.sleep();
  }
}
