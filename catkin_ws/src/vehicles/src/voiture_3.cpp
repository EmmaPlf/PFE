
#include "../include/Vehicles.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <cmath>
#include <iostream>
#include <sstream>

#define STATION_ID 3 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_3");
  ros::Time::init();
  ros::Rate loop_rate(0.6);

  // TODO /ODOM Changer quand on aura plusieurs vehicules
  Vehicles v3 = Vehicles("tb3_3/odom", STATION_ID);
  Position pos = Position(52, 52, 0);
  v3.setDest(pos);

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v3.getPubEce_C().getNumSubscribers() < 1) {
  }

  // Envoyer message INIT au démarrage et si changement de destination
  v3.fill_ece_data(ID_CONTROLER, INIT_PHASE, 0);

  while (ros::ok()) {
    ros::spinOnce();

    // Envoyer CAM en boucle au controler
    v3.fill_cam_data(ID_CONTROLER);

    // Si le véhicule est le véhicule de tête
    if (v3.getHead() == true) {

      // Parcourir le platoon du véhicule
      std::map<uint8_t, uint8_t> map_rank = v3.getPlatoon().getMapRank();
      std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
      while (it != map_rank.end()) {
        // Si l'ID du véhicule n'est pas celui parcouru dans la map du platoon
        if (it->first != v3.getStationId()) {
          // Envoyer CAM en boucle au véhicule correspondant à l'ID
          v3.fill_cam_data(it->first);
          ROS_INFO("Envoie message CAM au véhicule : %d", it->first);
        }
      }
    }

    loop_rate.sleep();
  }

  // Envoyer CAM en boucle si platoon et si voiture de tete aux autres vehicules
  // Envoyer DENM au controler et aux voitures (déterminer lesquelles selon
  // positiond ans le platoon)

  // Envoyer ECE a controler si desinsertion
  return 0;
}