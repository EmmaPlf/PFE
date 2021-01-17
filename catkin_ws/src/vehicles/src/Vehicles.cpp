#include "../include/Vehicles.h"

/// CONSTRUCTEUR

Vehicles::Vehicles(char *odom_topic) {

  /// SUBSCRIBERS

  this->sub_odom =
      n.subscribe<nav_msgs::Odometry>(odom_topic, 1000, boost::bind(odom_callback, _1, *this));

  this->sub_ece_V = n.subscribe<ece_msgs::ecemsg>(
      "vehicles_ece", 1000, boost::bind(sub_ece_V_callback, _1, *this));

  this->sub_DENM_V = n.subscribe<etsi_msgs::DENM>(
      "vehicles_DENM", 1000, boost::bind(sub_DENM_V_callback, _1, *this));

  this->sub_CAM_V = n.subscribe<etsi_msgs::CAM>(
      "vehicles_CAM", 1000, boost::bind(sub_CAM_V_callback, _1, *this));
}

/// DESTRUCTEUR

Vehicles::~Vehicles() {}

/// GETTERS

int64_t Vehicles::getLongitude() { return this->longitude; }

int64_t Vehicles::getLatitude() { return this->latitude; }

int32_t Vehicles::getAltitude() { return this->altitude; }

int8_t Vehicles::getVelocity() { return this->velocity; }

int16_t Vehicles::getYawRate() { return this->yaw_rate; }

ros::NodeHandle Vehicles::getNodeHandle() { return this->n; }

// getPub
ros::Publisher Vehicles::getPubEce_C() { return this->pub_ece_C; }

ros::Publisher Vehicles::getPubDENM_C() { return this->pub_DENM_C; }

ros::Publisher Vehicles::getPubCAM_C() { return this->pub_CAM_C; }

ros::Publisher Vehicles::getPubEce_V() { return this->pub_ece_V; }

ros::Publisher Vehicles::getPubDENM_V() { return this->pub_DENM_V; }

ros::Publisher Vehicles::getPubCAM_V() { return this->pub_CAM_V; }

// getSub
ros::Subscriber Vehicles::getSubEce_V() { return this->sub_ece_V; }

ros::Subscriber Vehicles::getSubDENM_V() { return this->sub_DENM_V; }

ros::Subscriber Vehicles::getSubCAM_V() { return this->sub_CAM_V; }

/// SETTERS

void Vehicles::setLongitude(int64_t longitude) { this->longitude = longitude; }

void Vehicles::setLatitude(int64_t latitude) { this->latitude = latitude; }

void Vehicles::setAltitude(int32_t altitude) { this->altitude = altitude; }

void Vehicles::setVelocity(int8_t velocity) { this->velocity = velocity; }

void Vehicles::setYawRate(int16_t yaw_rate) { this->yaw_rate = yaw_rate; }

void Vehicles::setNodeHandle(ros::NodeHandle n) { this->n = n; }

// setPub
void Vehicles::setPubEce_C(ros::Publisher pub) { this->pub_ece_C = pub; }

void Vehicles::setPubDENM_C(ros::Publisher pub) { this->pub_DENM_C = pub; }

void Vehicles::setPubCAM_C(ros::Publisher pub) { this->pub_CAM_C = pub; }

void Vehicles::setPubEce_V(ros::Publisher pub) { this->pub_ece_V = pub; }

void Vehicles::setPubDENM_V(ros::Publisher pub) { this->pub_DENM_V = pub; }

void Vehicles::setPubCAM_V(ros::Publisher pub) { this->pub_CAM_V = pub; }

// setSub
void Vehicles::setSubEce_V(ros::Subscriber sub) { this->sub_ece_V = sub; }

void Vehicles::setSubDENM_V(ros::Subscriber sub) { this->sub_DENM_V = sub; }

void Vehicles::setSubCAM_V(ros::Subscriber sub) { this->sub_CAM_V = sub; }

/// METHODS
uint8_t Vehicles::init_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour l'initialisation
  return 1;
}

uint8_t Vehicles::insert_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, insertion message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  // Ref Position
  int64_t lon = msg->insertion.reference_position.longitude;
  int64_t lat = msg->insertion.reference_position.latitude;

  // PositionConfidenceEllipse
  uint16_t semi_major_confidence =
      msg->insertion.reference_position.position_confidence
          .semi_major_confidence;
  uint16_t semi_minor_confidence =
      msg->insertion.reference_position.position_confidence
          .semi_minor_confidence;
  uint16_t semi_major_orientation =
      msg->insertion.reference_position.position_confidence
          .semi_major_orientation;

  // Altitude:
  int32_t altValue = msg->insertion.reference_position.altitude.value;
  uint8_t altConf = msg->insertion.reference_position.altitude.confidence;

  // Confirmation insertion
  bool checkInsert = msg->insertion.confirmation_insertion;
  return 1;
}

uint8_t Vehicles::desinsert_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour désinsertion
  ROS_INFO("I have received ece msg, desinsertion message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  /// Desinsertion
  bool askExit = msg->desinsertion.demande_sortie;

  // Speed
  int16_t speedVal = msg->desinsertion.speed.value;
  uint8_t speedConf = msg->desinsertion.speed.confidence;

  // Ref Position
  int64_t lat = msg->desinsertion.point_sortie.latitude;
  int64_t lon = msg->desinsertion.point_sortie.longitude;

  // PositionConfidenceEllipse
  uint16_t semi_major_confidence =
      msg->desinsertion.point_sortie.position_confidence.semi_major_confidence;
  uint16_t semi_minor_confidence =
      msg->desinsertion.point_sortie.position_confidence.semi_minor_confidence;
  uint16_t semi_major_orientation =
      msg->desinsertion.point_sortie.position_confidence.semi_major_orientation;

  // insert Altitude:
  int32_t altValue = msg->desinsertion.point_sortie.altitude.value;
  uint8_t altConf = msg->desinsertion.point_sortie.altitude.confidence;

  // Confirmation insertion
  uint8_t position = msg->desinsertion.position;
  return 1;
}

uint8_t Vehicles::light_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, traffic light message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  /// feu de signalisation
  bool askExit = msg->feu.permission_feu;

  return 1;
}

uint8_t Vehicles::brake_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, emergency brake message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  /// freinage d'urgence
  uint8_t postion = msg->freinage_urgence.position;

  return 1;
}

// Callback
void Vehicles::sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                  Vehicles &v) {

  ROS_INFO("I have received ece msg, %d", msg->header.seq);
  int rep = 0;

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  // Si le message nous est destiné on lis la suite
  uint8_t receiver = msg->basic_container.ID_dest;
  /*if (receiver != v.getId()) {
    // si ne nous est pas destiné
  } else {

    switch (phase) {
    case 0:
      // Récup véhicules avec destinations pour créer un platoon
      // Envoie ensuite les infos à chaque véhicule concerné
      rep = v.init_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 1:
      // Véhicule souhaitant s'insérer ? Ou uniquement confirmation insertion ?
      rep = v.insert_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 2:
      rep = v.desinsert_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 3:
      rep = v.light_receive(msg);
      // Réception ici de message venant de feux
      // traitement_feux(msg, p);
      break;

    case 4:
      rep = v.brake_receive(msg);
      // ??? Reçoit d'un véhicule message freinage urgence
      // Renvoie aux autres véhicules l'info ?
      // traitement_freinage_urg(msg, p);
      break;

    default:
      break;
    }
  }*/
}

void Vehicles::sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                   Vehicles &v) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  // uint8_t exp = msg->basic_container.ID_exp; // EXISTE PAS

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

void Vehicles::sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                  Vehicles &v) {

  ROS_INFO("I have received CAM msg");

  // Récupérer expéditeur // EXISTE PAS
  // uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

// Publish
// to CONTROLER
uint8_t Vehicles::publish_ece_msg_C(ece_msgs::ecemsg msg) {
  this->pub_ece_C = this->n.advertise<ece_msgs::ecemsg>("controler_ece", 1000);
  this->pub_ece_C.publish(msg);
}

uint8_t Vehicles::publish_CAM_msg_C(etsi_msgs::CAM msg) {
  this->pub_ece_C = this->n.advertise<etsi_msgs::CAM>("controler_CAM", 1000);
  this->pub_CAM_C.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_C(etsi_msgs::DENM msg) {
  this->pub_ece_C = this->n.advertise<etsi_msgs::DENM>("controler_DENM", 1000);
  this->pub_DENM_C.publish(msg);
}

// to VEHICLE
uint8_t Vehicles::publish_ece_msg_V(ece_msgs::ecemsg msg) {
  this->pub_ece_V = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);
  this->pub_ece_V.publish(msg);
}

uint8_t Vehicles::publish_CAM_msg_V(etsi_msgs::CAM msg) {
  this->pub_ece_V = this->n.advertise<etsi_msgs::CAM>("vehicles_CAM", 1000);
  this->pub_CAM_V.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_V(etsi_msgs::DENM msg) {
  this->pub_ece_V = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);
  this->pub_DENM_V.publish(msg);
}

void Vehicles::odom_callback(const nav_msgs::Odometry::ConstPtr &msg, Vehicles &v) {

  double x_flottant = msg->pose.pose.position.x;
  double y_flottant = msg->pose.pose.position.y;
  double z_flottant = msg->pose.pose.position.z;

  v.longitude = (int64_t)(x_flottant * 131072);
  v.latitude = (int64_t)(y_flottant * 131072);
  v.altitude = (int32_t)(z_flottant * 131072);

  v.velocity = (int8_t)sqrt(pow(msg->twist.twist.linear.x, 2) +
                                pow(msg->twist.twist.linear.y, 2));

  v.yaw_rate =
      msg->twist.twist.angular.z; // conversion rad/s to 0.01 degree/s

//   ROS_INFO("odom_callback : x : %f", v.longitude);
//   ROS_INFO("odom_callback : y : %f", v.latitude);
//   ROS_INFO("odom_callback : z : %f", v.altitude);
}