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
#define STATION_ID 3 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_3");
  ros::Time::init();
  ros::Rate loop_rate(10);

  // TODO /ODOM Changer quand on aura plusieurs vehicules
  Vehicles v3 = Vehicles("tb3_3/odom", STATION_ID);
  Position pos = Position(52, 52, 0);
  v3.setDest(pos);

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v3.getPubEce_C().getNumSubscribers() < 1) {
  }

  while (ros::ok()) {
    v3.ece_data(0, 0);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}