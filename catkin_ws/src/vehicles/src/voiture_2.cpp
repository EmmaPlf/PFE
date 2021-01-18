#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../include/Vehicles.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include <cmath>
#include <iostream>
#include <sstream>

// Paramètres à modifier selon la station
#define STATION_ID 2 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_1");

  // TODO /ODOM Changer quand on aura plusieurs vehicules
  Vehicles v1 = Vehicles("/odom", STATION_ID);

  ros::spin();

  ros::Rate loop_rate(10);

  // Attendre d'avoir une connection avec un subscriber au moins
  //   while (pub.getNumSubscribers() < 1) {
  //   }

  // while (ros::ok()) {
  // ros::spinOnce();
  // loop_rate.sleep();
  //   }

  return 0;
}