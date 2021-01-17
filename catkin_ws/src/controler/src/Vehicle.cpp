#include "../include/Vehicle.h"

Vehicle::Vehicle() : id(0), dest(0, 0, 0), speed(0) {}

Vehicle::Vehicle(uint8_t id, Position dest, Position actual_pos, int8_t speed,
                 uint8_t has_platoon) {
  this->id = id;
  this->dest = dest;
  this->actual_pos = actual_pos;
  this->speed = speed;
  this->has_platoon = has_platoon;

  /// PUBLISHERS

  //   this->pub_ece_C = n.advertise<ece_msgs::ecemsg>("controller_ece", 1000);

  //   this->pub_DENM_C = n.advertise<etsi_msgs::DENM>("controller_DENM", 1000);

  //   this->pub_CAM_C = n.advertise<etsi_msgs::DENM>("controller_CAM", 1000);

  //   this->pub_ece_V = n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  //   this->pub_DENM_V = n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);

  //   this->pub_CAM_V = n.advertise<etsi_msgs::DENM>("vehicles_CAM", 1000);

  /// SUBSCRIBERS

  this->sub_ece_V = n.subscribe<ece_msgs::ecemsg>(
      "vehicles_ece", 1000, boost::bind(sub_ece_V_callback, _1, *this));

  this->sub_DENM_V = n.subscribe<etsi_msgs::DENM>(
      "vehicles_DENM", 1000, boost::bind(sub_DENM_V_callback, _1, *this));

  this->sub_CAM_V = n.subscribe<etsi_msgs::CAM>(
      "vehicles_CAM", 1000, boost::bind(sub_CAM_V_callback, _1, *this));
}
/// DESTRUCTEUR

Vehicle::~Vehicle() {}

/// GETTER

uint8_t Vehicle::getId() { return this->id; }

Position Vehicle::getDest() { return this->dest; }

Position Vehicle::getActualPos() { return this->actual_pos; }

uint8_t Vehicle::getHasPlatoon() { return this->has_platoon; }

int8_t Vehicle::getSpeed() { return this->speed; }

ros::NodeHandle Vehicle::getNodeHandle() { return this->n; }

// getPub
ros::Publisher Vehicle::getPubEce_C() { return this->pub_ece_C; }

ros::Publisher Vehicle::getPubDENM_C() { return this->pub_DENM_C; }

ros::Publisher Vehicle::getPubCAM_C() { return this->pub_CAM_C; }

ros::Publisher Vehicle::getPubEce_V() { return this->pub_ece_V; }

ros::Publisher Vehicle::getPubDENM_V() { return this->pub_DENM_V; }

ros::Publisher Vehicle::getPubCAM_V() { return this->pub_CAM_V; }

// getSub
ros::Subscriber Vehicle::getSubEce_V() { return this->sub_ece_V; }

ros::Subscriber Vehicle::getSubDENM_V() { return this->sub_DENM_V; }

ros::Subscriber Vehicle::getSubCAM_V() { return this->sub_CAM_V; }

/// SETTER

void Vehicle::setId(uint8_t id) { this->id = id; }

void Vehicle::setDest(Position dest) { this->dest = dest; }

void Vehicle::setActualPos(Position actual_pos) {
  this->actual_pos = actual_pos;
}

void Vehicle::setHasPlatoon(uint8_t has_platoon) {
  this->has_platoon = has_platoon;
}

void Vehicle::setSpeed(int8_t speed) { this->speed = speed; }

void Vehicle::setNodeHandle(ros::NodeHandle n) { this->n = n; }

// setPub
void Vehicle::setPubEce_C(ros::Publisher pub) { this->pub_ece_C = pub; }

void Vehicle::setPubDENM_C(ros::Publisher pub) { this->pub_DENM_C = pub; }

void Vehicle::setPubCAM_C(ros::Publisher pub) { this->pub_CAM_C = pub; }

void Vehicle::setPubEce_V(ros::Publisher pub) { this->pub_ece_V = pub; }

void Vehicle::setPubDENM_V(ros::Publisher pub) { this->pub_DENM_V = pub; }

void Vehicle::setPubCAM_V(ros::Publisher pub) { this->pub_CAM_V = pub; }

// setSub
void Vehicle::setSubEce_V(ros::Subscriber sub) { this->sub_ece_V = sub; }

void Vehicle::setSubDENM_V(ros::Subscriber sub) { this->sub_DENM_V = sub; }

void Vehicle::setSubCAM_V(ros::Subscriber sub) { this->sub_CAM_V = sub; }

/// METHOD
uint8_t Vehicle::init_receive(ece_msgs::ecemsg msg) {
  // Récupère les informations utiles pour l'initialisation
  return 1;
}

uint8_t Vehicle::insert_receive(ece_msgs::ecemsg msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, insertion message !");

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  // Ref Position
  int64_t lon = msg.insertion.reference_position.longitude;
  int64_t lat = msg.insertion.reference_position.latitude;

  // PositionConfidenceEllipse
  uint16_t semi_major_confidence =
      msg.insertion.reference_position.position_confidence
          .semi_major_confidence;
  uint16_t semi_minor_confidence =
      msg.insertion.reference_position.position_confidence
          .semi_minor_confidence;
  uint16_t semi_major_orientation =
      msg.insertion.reference_position.position_confidence
          .semi_major_orientation;

  // Altitude:
  int32_t altValue = msg.insertion.reference_position.altitude.value;
  uint8_t altConf = msg.insertion.reference_position.altitude.confidence;

  // Confirmation insertion
  bool checkInsert = msg.insertion.confirmation_insertion;
  return 1;
}

uint8_t Vehicle::desinsert_receive(ece_msgs::ecemsg msg) {
  // Récupère les informations utiles pour désinsertion
  ROS_INFO("I have received ece msg, desinsertion message !");

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  /// Desinsertion
  bool askExit = msg.desinsertion.demande_sortie;

  // Speed
  int16_t speedVal = msg.desinsertion.speed.value;
  uint8_t speedConf = msg.desinsertion.speed.confidence;

  // Ref Position
  int64_t lat = msg.desinsertion.point_sortie.latitude;
  int64_t lon = msg.desinsertion.point_sortie.longitude;

  // PositionConfidenceEllipse
  uint16_t semi_major_confidence =
      msg.desinsertion.point_sortie.position_confidence.semi_major_confidence;
  uint16_t semi_minor_confidence =
      msg.desinsertion.point_sortie.position_confidence.semi_minor_confidence;
  uint16_t semi_major_orientation =
      msg.desinsertion.point_sortie.position_confidence.semi_major_orientation;

  // insert Altitude:
  int32_t altValue = msg.desinsertion.point_sortie.altitude.value;
  uint8_t altConf = msg.desinsertion.point_sortie.altitude.confidence;

  // Confirmation insertion
  uint8_t position = msg.desinsertion.position;
  return 1;
}

uint8_t Vehicle::light_receive(ece_msgs::ecemsg msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, traffic light message !");

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  /// feu de signalisation
  bool askExit = msg.feu.permission_feu;

  return 1;
}

uint8_t Vehicle::brake_receive(ece_msgs::ecemsg msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, emergency brake message !");

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  /// freinage d'urgence
  uint8_t postion = msg.freinage_urgence.position;

  return 1;
}

// Callback
void Vehicle::sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                 Vehicle &v) {

  ROS_INFO("I have received ece msg, %d", msg->header.seq);
  int rep = 0;

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  // Si le message nous est destiné on lis la suite
  uint8_t receiver = msg->basic_container.ID_dest;
  if (receiver != v.getId()) {
    // si ne nous est pas destiné
  } else {

    switch (phase) {
    case 0:
      // Récup véhicules avec destinations pour créer un platoon
      // Envoie ensuite les infos à chaque véhicule concerné
      rep = v.init_receive(*msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 1:
      // Véhicule souhaitant s'insérer ? Ou uniquement confirmation insertion ?
      rep = v.insert_receive(*msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 2:
      rep = v.desinsert_receive(*msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 3:
      rep = v.light_receive(*msg);
      // Réception ici de message venant de feux
      // traitement_feux(msg, p);
      break;

    case 4:
      rep = v.brake_receive(*msg);
      // ??? Reçoit d'un véhicule message freinage urgence
      // Renvoie aux autres véhicules l'info ?
      // traitement_freinage_urg(msg, p);
      break;

    default:
      break;
    }
  }
}

void Vehicle::sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                  Vehicle &v) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  // uint8_t exp = msg->basic_container.ID_exp; // EXISTE PAS

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

void Vehicle::sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                 Vehicle &v) {

  ROS_INFO("I have received CAM msg");

  // Récupérer expéditeur // EXISTE PAS
  // uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

// Publish
// to CONTROLER
uint8_t Vehicle::publish_ece_msg_C(ece_msgs::ecemsg msg) {
  this->pub_ece_C.publish(msg);
}

uint8_t Vehicle::publish_CAM_msg_C(etsi_msgs::CAM msg) {
  this->pub_CAM_C.publish(msg);
}

uint8_t Vehicle::publish_DENM_msg_C(etsi_msgs::DENM msg) {
  this->pub_DENM_C.publish(msg);
}

// to VEHICLE
uint8_t Vehicle::publish_ece_msg_V(ece_msgs::ecemsg msg) {
  this->pub_ece_V.publish(msg);
}

uint8_t Vehicle::publish_CAM_msg_V(etsi_msgs::CAM msg) {
  this->pub_CAM_V.publish(msg);
}

uint8_t Vehicle::publish_DENM_msg_V(etsi_msgs::DENM msg) {
  this->pub_DENM_V.publish(msg);
}