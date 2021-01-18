#include "../include/Vehicles.h"

/// CONSTRUCTEUR

Vehicles::Vehicles(char *odom_topic, uint32_t station_id) : count(0) {

  this->setStationId(station_id);

  this->pub_ece_C = this->n.advertise<ece_msgs::ecemsg>("controler_ece", 1000);

  this->pub_CAM_C = this->n.advertise<etsi_msgs::CAM>("controler_CAM", 1000);

  this->pub_DENM_C = this->n.advertise<etsi_msgs::DENM>("controler_DENM", 1000);

  this->pub_ece_V = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  this->pub_CAM_V = this->n.advertise<etsi_msgs::CAM>("vehicles_CAM", 1000);

  this->pub_DENM_V = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);

  /// SUBSCRIBERS

  this->sub_odom = this->n.subscribe<nav_msgs::Odometry>(
      odom_topic, 1000, boost::bind(odom_callback, _1, this));

  this->sub_ece_V = this->n.subscribe<ece_msgs::ecemsg>(
      "vehicles_ece", 1000, boost::bind(sub_ece_V_callback, _1, this));

  this->sub_DENM_V = this->n.subscribe<etsi_msgs::DENM>(
      "vehicles_DENM", 1000, boost::bind(sub_DENM_V_callback, _1, this));

  this->sub_CAM_V = this->n.subscribe<etsi_msgs::CAM>(
      "vehicles_CAM", 1000, boost::bind(sub_CAM_V_callback, _1, this));
}

/// DESTRUCTEUR

Vehicles::~Vehicles() {}

/// GETTERS

Position Vehicles::getDest() { return this->dest; }

Position Vehicles::getActualPos() { return this->actual_pos; }

int8_t Vehicles::getVelocity() { return this->velocity; }

int16_t Vehicles::getYawRate() { return this->yaw_rate; }

ros::NodeHandle Vehicles::getNodeHandle() { return this->n; }

uint32_t Vehicles::getStationId() { return this->station_id; }

uint64_t Vehicles::getCount() { return this->count; }

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

void Vehicles::setDest(Position dest) { this->dest = dest; }

void Vehicles::setActualPos(Position actual_pos) {
  this->actual_pos = actual_pos;
}

void Vehicles::setVelocity(int8_t velocity) { this->velocity = velocity; }

void Vehicles::setYawRate(int16_t yaw_rate) { this->yaw_rate = yaw_rate; }

void Vehicles::setNodeHandle(ros::NodeHandle n) { this->n = n; }

void Vehicles::setStationId(uint32_t station_id) {
  this->station_id = station_id;
}

void Vehicles::setCount(uint64_t count) { this->count = count; }

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
  int64_t lon = msg->insertion.point_insertion.longitude;
  int64_t lat = msg->insertion.point_insertion.latitude;

    // Altitude:
  int32_t altValue = msg->insertion.point_insertion.altitude;

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

  // insert Altitude:
  int32_t altValue = msg->desinsertion.point_sortie.altitude;

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

/// INIT
// uint8_t Vehicles::init_send() { this->ece_data(uint32_t id_dest); }

// Callback
void Vehicles::sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                  Vehicles *v) {

  ROS_INFO("I have received ece msg, %d", msg->header.seq);
  int rep = 0;

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  // Si le message nous est destiné on lis la suite
  uint8_t receiver = msg->basic_container.ID_dest;
  /*if (receiver != v->getId()) {
    // si ne nous est pas destiné
  } else {

    switch (phase) {
    case 0:
      // Récup véhicules avec destinations pour créer un platoon
      // Envoie ensuite les infos à chaque véhicule concerné
      rep = v->init_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 1:
      // Véhicule souhaitant s'insérer ? Ou uniquement confirmation insertion ?
      rep = v->insert_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 2:
      rep = v->desinsert_receive(msg);
      // TODO rep == 0 ? (erreur)
      break;

    case 3:
      rep = v->light_receive(msg);
      // Réception ici de message venant de feux
      // traitement_feux(msg, p);
      break;

    case 4:
      rep = v->brake_receive(msg);
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
                                   Vehicles *v) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  // uint8_t exp = msg->basic_container.ID_exp; // EXISTE PAS

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

void Vehicles::sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                  Vehicles *v) {

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
  this->pub_CAM_C = this->n.advertise<etsi_msgs::CAM>("controler_CAM", 1000);
  this->pub_CAM_C.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_C(etsi_msgs::DENM msg) {
  this->pub_DENM_C = this->n.advertise<etsi_msgs::DENM>("controler_DENM", 1000);
  this->pub_DENM_C.publish(msg);
}

// to VEHICLE
uint8_t Vehicles::publish_ece_msg_V(ece_msgs::ecemsg msg) {
  this->pub_ece_V = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);
  this->pub_ece_V.publish(msg);
}

uint8_t Vehicles::publish_CAM_msg_V(etsi_msgs::CAM msg) {
  this->pub_CAM_V = this->n.advertise<etsi_msgs::CAM>("vehicles_CAM", 1000);
  this->pub_CAM_V.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_V(etsi_msgs::DENM msg) {
  this->pub_DENM_V = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);
  this->pub_DENM_V.publish(msg);
}

void Vehicles::odom_callback(const nav_msgs::Odometry::ConstPtr &msg,
                             Vehicles *v) {

  double lat = msg->pose.pose.position.x;
  double lon = msg->pose.pose.position.y;
  double alt = msg->pose.pose.position.z;
  Position actual_pos = Position((float)lat, (float)lon, (float)alt);

  v->setActualPos(actual_pos);

  v->velocity = (int8_t)sqrt(pow(msg->twist.twist.linear.x, 2) +
                             pow(msg->twist.twist.linear.y, 2));

  v->yaw_rate = msg->twist.twist.angular.z; // conversion rad/s to 0.01 degree/s

  //   ROS_INFO("odom_callback : x : %f", v.getActualPos().getLon());
  //   ROS_INFO("odom_callback : y : %f", v.getActualPos().getLat());
  //   ROS_INFO("odom_callback : z : %f", v.getActualPos().getAlt());
}

/// REMPLIR MESSAGES
void Vehicles::ece_data(uint32_t id_dest, uint8_t phase) {

  ece_msgs::ecemsg msg;
  msg.header.seq = this->getCount();   // uint32
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = ECE_FRAME_ID;  // string

  msg.its_header.protocol_version = PROTOCOL_VERSION; // uint8_t
  msg.its_header.message_id = ECE_MSG_ID;             // uint8_t
  msg.its_header.station_id = this->getStationId();

  msg.basic_container.phase.value = phase;
  msg.basic_container.ID_exp = this->getStationId();
  msg.basic_container.ID_dest = id_dest;

  // Destination actuelle
  // Convertir en int pour ne pas perdre la précision des float
  int64_t longitude = (int64_t)(this->getDest().getLon() * 1024);
  int64_t latitude = (int64_t)(this->getDest().getLat() * 1024);
  int32_t altitude = (int32_t)(this->getDest().getAlt() * 1024);

  msg.init.destination.longitude = longitude;
  msg.init.destination.latitude = latitude;
  msg.init.destination.altitude = altitude;

  // Position voiture
  // Convertir en int pour ne pas perdre la précision des float
  longitude = (int64_t)(this->getActualPos().getLon() * 1024);
  latitude = (int64_t)(this->getActualPos().getLat() * 1024);
  altitude = (int32_t)(this->getActualPos().getAlt() * 1024);

  msg.init.actual_position.longitude = longitude;     // 50;
  msg.init.actual_position.latitude = latitude;       // 50;
  msg.init.actual_position.altitude = altitude; // 0;

  switch (phase) {
  // Init
  case 0:
    break;
  }

  this->setCount(this->getCount() + 1);

  switch (id_dest) {
  // Controler
  case 0:
    this->publish_ece_msg_C(msg);
    break;

  case 1:
    this->publish_ece_msg_V(msg);
    break;

  case 2:
    this->publish_ece_msg_V(msg);
    break;

  case 3:
    this->publish_ece_msg_V(msg);
    break;
  }

  ROS_INFO("I have send ece msg, station_id : %d", this->getStationId());
}

// TODO : implémenter dans Vehicles
void Vehicles::cam_data(etsi_msgs::CAM &msg) {

  // Passer la position en int -> faire la conversion

  msg.generation_delta_time = 0; // milliseconds since 2004 modulo 2^16 uint16_t

  msg.header.seq = this->getCount();   // uint32 // A CHANGER
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = CAM_FRAME_ID;  // string

  msg.its_header.protocol_version = PROTOCOL_VERSION;
  msg.its_header.message_id = CAM_MSG_ID;
  msg.its_header.station_id = this->getStationId();

  msg.station_type.value = STATION_TYPE;

  // Will be ignored
  //   msg.reference_position.position_confidence.semi_major_confidence = 0;
  //   msg.reference_position.position_confidence.semi_minor_confidence = 0;
  //   msg.reference_position.position_confidence.semi_major_orientation = 0;

  // Convertir en int pour ne pas perdre la précision des float
  int64_t longitude = (int64_t)(this->getActualPos().getLon() * 1024);
  int64_t latitude = (int64_t)(this->getActualPos().getLat() * 1024);
  int32_t altitude = (int32_t)(this->getActualPos().getAlt() * 1024);

  msg.reference_position.longitude = longitude;
  msg.reference_position.latitude = latitude;
  msg.reference_position.altitude.value = altitude; // Convertir en 0.01m
  // msg.reference_position.altitude.confidence = 15; // unavailable

  msg.high_frequency_container.speed.value =
      this->getVelocity(); // Ne pas oublier : convertir dans controler
  msg.high_frequency_container.speed.confidence = 0; // A VOIR

  msg.high_frequency_container.drive_direction.value = 0; // TODO

  msg.high_frequency_container.vehicle_length.value = 0;                 // TODO
  msg.high_frequency_container.vehicle_length.confidence_indication = 0; // TODO
  msg.high_frequency_container.vehicle_width.value = 0;                  // TODO

  msg.high_frequency_container.longitudinal_acceleration.value =
      0; // velocityLong;
         // msg.high_frequency_container.longitudinal_acceleration.confidence =
         //   confidenceVelocityLong;

  msg.high_frequency_container.curvature.value = 0;
  msg.high_frequency_container.curvature.confidence = 0;
  msg.high_frequency_container.curvature_calculation_mode.value = 0;

  msg.high_frequency_container.yaw_rate.value = this->getYawRate();
  msg.high_frequency_container.yaw_rate.confidence = 0;

  msg.high_frequency_container.acceleration_control.value = 0;
  msg.high_frequency_container.has_acceleration_control = 0;

  msg.low_frequency_container.vehicle_role.value = 0;
  msg.low_frequency_container.exterior_lights.value = 0;
  // msg.low_frequency_container.path_history.points.path_position = 0;
  // msg.low_frequency_container.path_history.points.path_delta_time = 0;

  this->setCount(this->getCount() + 1);
}