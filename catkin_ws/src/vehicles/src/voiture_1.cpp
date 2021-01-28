#include "../include/Vehicles.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <cmath>
#include <iostream>
#include <sstream>

#define STATION_ID 1 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "vehicle_1");
  ros::Time::init();
  ros::Rate loop_rate(FREQ);
  // ros::MultiThreadedSpinner spinner(4);
  uint8_t rank = 0;

  // Construction d'un véhicule
  Vehicles v1 = Vehicles("tb3_0/odom", STATION_ID);
  Position pos = Position(50, 50, 0);
  v1.setDest(pos);

  // Attendre d'avoir une connection avec un subscriber au moins
  while (v1.getPubEce_C().getNumSubscribers() < 1) {
  }

  // Envoyer message INIT au démarrage et si changement de destination
  v1.fill_ece_data(ID_CONTROLER, INIT_PHASE, 0);

  while (ros::ok()) {

    ros::spinOnce();

    // if (v1.getInit() == true) {

    // Attendre d'avoir une connection avec un subscriber au moins
    while (v1.getPubCAM_C().getNumSubscribers() < 1) {
    }

    // Envoyer CAM en boucle au controler
    v1.fill_cam_data(ID_CONTROLER);

    // Parcourir le platoon du véhicule
    std::map<uint8_t, uint8_t> map_rank = v1.getPlatoon().getMapRank();
    std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
    while (it != map_rank.end()) {

      // Récupérer le rang de la voiture actuelle
      if (it->first == v1.getStationId()) {
        rank = it->second;
      }
      it++;
    }

    // Parcourir le platoon du véhicule
    it = map_rank.begin();
    while (it != map_rank.end()) {

      // Si l'ID du véhicule n'est pas celui parcouru dans la map du
      // platoon et que son rang est supérieur + 1
      if ((it->first != v1.getStationId()) && (it->second == rank + 1)) {
        // Envoyer CAM en boucle au véhicule correspondant à l'ID
        v1.fill_cam_data(it->first);
        // ROS_INFO("Envoie message CAM au vehicule : %d", it->first);
      }
      it++;
    }

    loop_rate.sleep();
  }

  // Envoyer CAM en boucle si platoon et si voiture de tete aux autres
  // vehicules Envoyer DENM au controler et aux voitures (déterminer
  // lesquelles selon positiond ans le platoon)

  // Envoyer ECE a controler si desinsertion

  return 0;
}