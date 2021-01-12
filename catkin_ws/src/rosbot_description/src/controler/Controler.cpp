#include "../../include/controler/traitement.h"
#include "../../include/controler/Controler.h"
#include "ros/ros.h"


Controler::Controler()
{
  this->p = Platoon();
}

Controler::Controler(Platoon p, std::map<Vehicle, Position> map_v_p)
{
  this->p = p;
  this->map_v_p = map_v_p;
}

Controler::~Controler()
{

}

Platoon Controler::getPlatoon()
{
  return this->p;
}

std::map<Vehicle, Position> Controler::getMapVP()
{
  return this->getMapVP;
}

void Controler::setPlatoon(Platoon p)
{
  this->p = p;
}

void Controler::setMapVP(std::map<Vehicle, Position> map_v_p)
{
  this->map_v_p = map_v_p;
}

void Controler::add_Vehicle(Vehicle v, Position p)
{
  this->map_v_p.insert(std::pair<Vehicle,Position>(v,p));
}



void Controler::sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg, Controler &c) {

  ROS_INFO("I have received ece msg");

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  switch (phase) {
  case 0:
    //Récup véhicules avec destinations pour créer un platoon
    //Envoie ensuite les infos à chaque véhicule concerné
    traitement_init(msg, p);
    break;

  case 1:
    //Véhicule souhaitant s'insérer ? Ou uniquement confirmation insertion ?
    traitement_insert(msg, p);
    break;

  case 2:
    //Demande de sortie
    //Vitesse de sortie
    //Position/Point de sortie
    //Interdistance
    //Vitesse décélération
    //Vitesse accélération
    //Nouvelle position dans P
    traitement_desinsert(msg, p);
    break;

  case 3:
    //Normalement rien ici à part si on reçoit des feux ?
    traitement_feux(msg, p);
    break;

  case 4:
    // Rien ici normalement aussi ?
    traitement_freinage_urg(msg, p);
    break;

  default:
    break;
  }
}

void Controler::sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg, Controler &c) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer destinataire
  uint8_t dest = msg->basic_container.ID_dest;
}

void Controler::sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg, Controler &c) {

  ROS_INFO("I have received CAM msg");

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer destinataire
  uint8_t dest = msg->basic_container.ID_dest;
}



// Main à bouger ailleurs ?
int main(int argc, char **argv) {
  ros::init(argc, argv, "controler");
  ros::NodeHandle n;

  Controler c = Controler();

  /// SUBSCRIBERS

  ros::Subscriber sub_controler_ece = n.subscribe<ece_msgs::ecemsg>(
      "controler_ece", 1000, boost::bind(sub_ece_callback, _1, c));

  ros::Subscriber sub_controler_DENM = n.subscribe<etsi_msgs::DENM>(
      "controler_DENM", 1000, boost::bind(sub_DENM_callback, _1, c));

  ros::Subscriber sub_controler_CAM = n.subscribe<etsi_msgs::CAM>(
      "controler_CAM", 1000, boost::bind(sub_CAM_callback, _1, c));

  /// PUBLISHERS

  ros::Publisher pub_ece = n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  ros::Publisher pub_DENM = n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);

  ros::Rate loop_rate(10);
}