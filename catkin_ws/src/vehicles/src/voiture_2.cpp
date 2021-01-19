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
  ros::init(argc, argv, "vehicle_2");
  ros::Time::init();
  ros::Rate loop_rate(0.6);

  // TODO /ODOM Changer quand on aura plusieurs vehicules
  Vehicles v2 = Vehicles("tb3_1/odom", STATION_ID);
  Position pos = Position(51, 51, 0);
  v2.setDest(pos);

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v2.getPubEce_C().getNumSubscribers() < 1) {
  }

  // Envoyer message INIT au démarrage et si changement de destination
  v2.fill_ece_data(ID_CONTROLER, INIT_PHASE, 0);

  while (ros::ok()) {
    ros::spinOnce();
    loop_rate.sleep();
    // Envoyer CAM en boucle au controler
    // v2.fill_cam_data(ID_CONTROLER);
    v2.fill_ece_data(ID_CONTROLER, INIT_PHASE, 0);
  }

  // Envoyer CAM en boucle si platoon et si voiture de tete aux autres vehicules
  // Envoyer DENM au controler et aux voitures (déterminer lesquelles selon
  // positiond ans le platoon)

  // Envoyer ECE a controler si desinsertion

  return 0;
}