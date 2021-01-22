#include "../include/Vehicles.h"

/// CONSTRUCTEUR

Vehicles::Vehicles(char *odom_topic, uint32_t station_id)
    : count(0), head(false), init(false) {

  this->setStationId(station_id);

  this->pub_ece_C = this->n.advertise<ece_msgs::ecemsg>("controler_ece", 1000);

  this->pub_CAM_C = this->n.advertise<etsi_msgs::CAM>("controler_CAM", 1000);

  this->pub_DENM_C = this->n.advertise<etsi_msgs::DENM>("controler_DENM", 1000);

  this->pub_ece_V = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  this->pub_CAM_V = this->n.advertise<etsi_msgs::CAM>("vehicles_CAM", 1000);

  this->pub_DENM_V = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);

  this->pub_simu_CAM =
      this->n.advertise<simu_msgs::simu_CAM>("vehicles_simu_CAM", 1000);

  /// SUBSCRIBERS

  this->sub_odom = this->n.subscribe<nav_msgs::Odometry>(
      odom_topic, 1000, boost::bind(odom_callback, _1, this));

  this->sub_ece_V = this->n.subscribe<ece_msgs::ecemsg>(
      "vehicles_ece", 1000, boost::bind(sub_ece_V_callback, _1, this));

  this->sub_DENM_V = this->n.subscribe<etsi_msgs::DENM>(
      "vehicles_DENM", 1000, boost::bind(sub_DENM_V_callback, _1, this));

  this->sub_CAM_V = this->n.subscribe<etsi_msgs::CAM>(
      "vehicles_CAM", 1000, boost::bind(sub_CAM_V_callback, _1, this));

  this->sub_simu_CAM = this->n.subscribe<simu_msgs::simu_CAM>(
      "vehicles_simu_CAM", 1000, boost::bind(sub_simu_CAM_callback, _1, this));
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

Platoon Vehicles::getPlatoon() { return this->platoon; }

bool Vehicles::getHasPlatoon() { return this->has_platoon; }

bool Vehicles::getHead() { return this->head; }

bool Vehicles::getInit() { return this->init; }

// getPub
ros::Publisher Vehicles::getPubEce_C() { return this->pub_ece_C; }

ros::Publisher Vehicles::getPubDENM_C() { return this->pub_DENM_C; }

ros::Publisher Vehicles::getPubCAM_C() { return this->pub_CAM_C; }

ros::Publisher Vehicles::getPubEce_V() { return this->pub_ece_V; }

ros::Publisher Vehicles::getPubDENM_V() { return this->pub_DENM_V; }

ros::Publisher Vehicles::getPubCAM_V() { return this->pub_CAM_V; }

ros::Publisher Vehicles::getPubSimuCAM() { return this->pub_simu_CAM; }

// getSub
ros::Subscriber Vehicles::getSubEce_V() { return this->sub_ece_V; }

ros::Subscriber Vehicles::getSubDENM_V() { return this->sub_DENM_V; }

ros::Subscriber Vehicles::getSubCAM_V() { return this->sub_CAM_V; }

ros::Subscriber Vehicles::getSubSimuCAM() { return this->sub_simu_CAM; }

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

void Vehicles::setPlatoon(Platoon platoon) { this->platoon = platoon; }

void Vehicles::setHasPlatoon(bool has_platoon) {
  this->has_platoon = has_platoon;
}

void Vehicles::setHead(bool head) { this->head = head; }

void Vehicles::setInit(bool init) { this->init = init; }

// setPub
void Vehicles::setPubEce_C(ros::Publisher pub) { this->pub_ece_C = pub; }

void Vehicles::setPubDENM_C(ros::Publisher pub) { this->pub_DENM_C = pub; }

void Vehicles::setPubCAM_C(ros::Publisher pub) { this->pub_CAM_C = pub; }

void Vehicles::setPubEce_V(ros::Publisher pub) { this->pub_ece_V = pub; }

void Vehicles::setPubDENM_V(ros::Publisher pub) { this->pub_DENM_V = pub; }

void Vehicles::setPubCAM_V(ros::Publisher pub) { this->pub_CAM_V = pub; }

void Vehicles::setPubSimuCAM(ros::Publisher pub) { this->pub_simu_CAM = pub; }

// setSub
void Vehicles::setSubEce_V(ros::Subscriber sub) { this->sub_ece_V = sub; }

void Vehicles::setSubDENM_V(ros::Subscriber sub) { this->sub_DENM_V = sub; }

void Vehicles::setSubCAM_V(ros::Subscriber sub) { this->sub_CAM_V = sub; }

void Vehicles::setSubSimuCAM(ros::Subscriber sub) { this->sub_simu_CAM = sub; }

/// METHODS
uint8_t Vehicles::insert_receive(const ece_msgs::ecemsg::ConstPtr &msg) {

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  // Récupère les informations utiles pour l'initialisation
  this->fill_platoon(msg);

  return 1;
}

void Vehicles::fill_platoon(const ece_msgs::ecemsg::ConstPtr &msg) {

  // Indiquer que objet a un platoon
  this->setHasPlatoon(true);

  // Création d'un Platoon
  Platoon platoon = Platoon();

  // Infos générales
  platoon.setId(msg->init.platoon.id_platoon);
  platoon.setNbVehicles(msg->init.platoon.nombre_vehicules);
  platoon.setSpeed(msg->init.platoon.vitesse_interdistance.speed.value);
  platoon.setInter(msg->init.platoon.vitesse_interdistance.interdistance);

  // Destination
  Position dest = Position();
  dest.setLat(msg->init.platoon.destination.latitude);
  dest.setLon(msg->init.platoon.destination.longitude);
  dest.setAlt(msg->init.platoon.destination.altitude);
  platoon.setDest(dest);

  // Map des rangs
  std::map<uint8_t, uint8_t> map_rank;
  for (int i = 0; i < platoon.getNbVehicles(); i++) {

    // Remplir la map d'ID et Rang
    ece_msgs::IDs id = msg->init.platoon.ids[i];
    map_rank.insert(std::pair<uint8_t, uint8_t>(id.ID, id.position));

    // Afficher ici

    // Si voiture de tête
    if ((this->getStationId() == 1) && (id.position == 0)) {
      this->setHead(true);
      ROS_INFO("Voiture de tete: id: %d, rang: %d", id.ID, id.position);
    }
  }
  platoon.setMapRank(map_rank);

  // Remplir le platoon
  this->setPlatoon(platoon);

  ROS_INFO("Platoon : ID: %d, Nb_v: %d, speed: %d", this->getPlatoon().getId(),
           this->getPlatoon().getNbVehicles(), this->getPlatoon().getSpeed());

  this->setInit(true);
}

// uint8_t Vehicles::insert_receive(const ece_msgs::ecemsg::ConstPtr &msg) {

//   // Récupère les informations utiles pour l'initialisation
//   ROS_INFO("I have received ece msg, insertion message !");

//   // Header
//   uint8_t header_station_id = msg->its_header.station_id;
//   uint8_t header_message_id = msg->its_header.message_id;

//   // Ref Position
//   int64_t lon = msg->insertion.point_insertion.longitude;
//   int64_t lat = msg->insertion.point_insertion.latitude;

//   // Altitude:
//   int32_t altValue = msg->insertion.point_insertion.altitude;

//   // Confirmation insertion
//   bool checkInsert = msg->insertion.confirmation_insertion;

//   /// FAIRE QUELQUE CHOSE AVEC LE ROBOT

//   // Puis confirmer insertion avec message ECE
//   this->fill_ece_data(ID_CONTROLER, INSERT_PHASE, 0);

//   return 1;
// }

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

  /// FAIRE QUELQUE CHOSE AVEC LE ROBOT

  // Puis confirmer desinsertion avec message ECE
  this->fill_ece_data(ID_CONTROLER, DESINSERT_PHASE, 1);

  return 1;
}

uint8_t Vehicles::light_receive(const ece_msgs::ecemsg::ConstPtr &msg) {

  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, traffic light message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  /// feu de signalisation
  bool permission = msg->feu.permission_feu;

  /// FAIRE QUELQUECHOSE AVEC ROBOT GENRE PASSER OU RALENTIR

  return 1;
}

uint8_t Vehicles::brake_receive(const ece_msgs::ecemsg::ConstPtr &msg) {
  // Récupère les informations utiles pour l'initialisation
  ROS_INFO("I have received ece msg, emergency brake message !");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  /// freinage d'urgence
  uint8_t position = msg->freinage_urgence.position;

  /// FAIRE QUELQUECHOSE AVEC ROBOT GENRE FREINER

  return 1;
}

// CALLBACK

void Vehicles::sub_ece_V_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                  Vehicles *v) {

  int rep = 0;

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  // Si le message nous est destiné on lis la suite
  uint8_t dest = msg->basic_container.ID_dest;

  if (dest != v->getStationId()) {

    // si ne nous est pas destiné
  } else {

    ROS_INFO("I have received ece msg, phase : %d",
             msg->basic_container.phase.value);

    switch (phase) {
    case 0:
      // Récup véhicules avec destinations pour créer un platoon
      // Envoie ensuite les infos à chaque véhicule concerné
      // rep = v->init_receive(msg);
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
      break;

    case 4:
      rep = v->brake_receive(msg);
      // ??? Reçoit d'un véhicule message freinage urgence
      // Renvoie aux autres véhicules l'info ?
      break;

    default:
      break;
    }
  }
}

/// PLUS TARD
void Vehicles::sub_DENM_V_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                   Vehicles *v) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  // uint8_t exp = msg->basic_container.ID_exp; // EXISTE PAS

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

// Ne sert pas
void Vehicles::sub_CAM_V_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                  Vehicles *v) {

  // ROS_INFO("I have received CAM msg");

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;
}

// Fonction qui remplace les CAM
void Vehicles::sub_simu_CAM_callback(const simu_msgs::simu_CAM::ConstPtr &msg,
                                     Vehicles *v) {

  // Header
  uint8_t header_station_id = msg->its_header.station_id;
  uint8_t header_message_id = msg->its_header.message_id;

  //   if (msg->dest == v->getStationId()) {
  //     ROS_INFO("I have received CAM msg");
  //   }
}

// Publish
// to CONTROLER
uint8_t Vehicles::publish_ece_msg_C(ece_msgs::ecemsg msg) {
  // this->pub_ece_C = this->n.advertise<ece_msgs::ecemsg>("controler_ece",
  // 1000);
  this->pub_ece_C.publish(msg);
}

uint8_t Vehicles::publish_CAM_msg_C(etsi_msgs::CAM msg) {
  // this->pub_CAM_C = this->n.advertise<etsi_msgs::CAM>("controler_CAM", 1000);
  this->pub_CAM_C.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_C(etsi_msgs::DENM msg) {
  // this->pub_DENM_C = this->n.advertise<etsi_msgs::DENM>("controler_DENM",
  // 1000);
  this->pub_DENM_C.publish(msg);
}

// to VEHICLE
uint8_t Vehicles::publish_ece_msg_V(ece_msgs::ecemsg msg) {
  // this->pub_ece_V = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece",
  // 1000);
  this->pub_ece_V.publish(msg);
}

uint8_t Vehicles::publish_CAM_msg_V(etsi_msgs::CAM msg) {
  // this->pub_CAM_V = this->n.advertise<etsi_msgs::CAM>("vehicles_CAM", 1000);
  this->pub_CAM_V.publish(msg);
}

uint8_t Vehicles::publish_DENM_msg_V(etsi_msgs::DENM msg) {
  // this->pub_DENM_V = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM",
  // 1000);
  this->pub_DENM_V.publish(msg);
}

uint8_t Vehicles::publish_simu_CAM_msg(simu_msgs::simu_CAM msg) {
  //  this->pub_simu_CAM =
  //  this->n.advertise<simu_msgs::simu_CAM>("vehicles_simu_CAM", 1000);
  this->pub_simu_CAM.publish(msg);
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
void Vehicles::fill_ece_data(uint32_t id_dest, uint8_t phase, uint8_t part) {

  int64_t longitude = 0;
  int64_t latitude = 0;
  int32_t altitude = 0;

  // HEADER
  ece_msgs::ecemsg msg;
  msg.header.seq = this->getCount();   // uint32
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = ECE_FRAME_ID;  // string

  // ITS HEADER
  msg.its_header.protocol_version = PROTOCOL_VERSION; // uint8_t
  msg.its_header.message_id = ECE_MSG_ID;             // uint8_t
  msg.its_header.station_id = this->getStationId();

  // BASIC CONTAINER
  msg.basic_container.phase.value = phase;
  msg.basic_container.ID_exp = this->getStationId();
  msg.basic_container.ID_dest = id_dest;

  switch (phase) {

  // INIT
  case 0:
    // Destination actuelle
    // Convertir en int pour ne pas perdre la précision des float
    longitude = (int64_t)(this->getDest().getLon() * 1024);
    latitude = (int64_t)(this->getDest().getLat() * 1024);
    altitude = (int32_t)(this->getDest().getAlt() * 1024);

    msg.init.destination.longitude = longitude;
    msg.init.destination.latitude = latitude;
    msg.init.destination.altitude = altitude;

    // Position voiture
    // Convertir en int pour ne pas perdre la précision des float
    longitude = (int64_t)(this->getActualPos().getLon() * 1024);
    latitude = (int64_t)(this->getActualPos().getLat() * 1024);
    altitude = (int32_t)(this->getActualPos().getAlt() * 1024);

    msg.init.actual_position.longitude = longitude; // 50;
    msg.init.actual_position.latitude = latitude;   // 50;
    msg.init.actual_position.altitude = altitude;   // 0;
    break;

  // INSERT
  case 1:
    msg.insertion.confirmation_insertion = true;
    break;

  // DESINSERT
  case 2:
    // Demande
    if (part == 0) {
      msg.desinsertion.demande_sortie = true;
      msg.desinsertion.confirmation_sortie = false;
    }
    // Confirmation
    else {
      msg.desinsertion.demande_sortie = false;
      msg.desinsertion.confirmation_sortie = true;
    }
    break;
  }

  this->setCount(this->getCount() + 1);

  if (id_dest == 0) {
    this->publish_ece_msg_C(msg);
  } else {
    this->publish_ece_msg_V(msg);
  }

  ROS_INFO("I have send ece msg, station_id : %d", this->getStationId());
}

// TODO : implémenter dans Vehicles
void Vehicles::fill_cam_data(uint32_t id_dest) {

  etsi_msgs::CAM msg;

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

  //   ROS_INFO("longitude: %f", (float)longitude / 1024);
  //   ROS_INFO("latitude: %f", (float)latitude / 1024);

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

  // SIMU CAM

  simu_msgs::simu_CAM simu_msg;

  simu_msg.header.seq = this->getCount();   // uint32
  simu_msg.header.stamp = ros::Time::now(); // time
  simu_msg.header.frame_id = CAM_FRAME_ID;  // string

  simu_msg.its_header.protocol_version = PROTOCOL_VERSION;
  simu_msg.its_header.message_id = CAM_MSG_ID;
  simu_msg.its_header.station_id = this->getStationId();

  simu_msg.reference_position.longitude = longitude;
  simu_msg.reference_position.latitude = latitude;
  simu_msg.reference_position.altitude.value = altitude;

  std::map<uint8_t, uint8_t> map_rank = this->getPlatoon().getMapRank();
  std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
  while (it != map_rank.end()) {
    if (id_dest == it->first) {
      simu_msg.rank = it->second;
    }
    it++;
  }

  simu_msg.speed.value = this->getVelocity();
  simu_msg.interdistance = 5;
  simu_msg.dest = id_dest;
  simu_msg.vehicle_length.value = 1; // uint16

  this->setCount(this->getCount() + 1);

  if (id_dest == 0) {
    this->publish_CAM_msg_C(msg);
  }
  // Si vehicule de tête seulement
  else {
    // this->publish_CAM_msg_V(msg);
    this->publish_simu_CAM_msg(simu_msg);
  }
}