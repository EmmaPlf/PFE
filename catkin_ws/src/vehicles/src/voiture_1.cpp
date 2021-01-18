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
#define STATION_ID 1 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_1");
  ros::Time::init();
  ros::Rate loop_rate(0.1);

  // Construction d'un véhicule
  Vehicles v1 = Vehicles("tb3_0/odom", STATION_ID);
  Position pos = Position(50, 50, 0);
  v1.setDest(pos);

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v1.getPubEce_C().getNumSubscribers() < 1) {
  }

  while (ros::ok()) {
    ros::spinOnce();
    v1.ece_data(0, 0);
    loop_rate.sleep();
  }

  return 0;
}