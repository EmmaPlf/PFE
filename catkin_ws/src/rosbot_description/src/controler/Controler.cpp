#include "../../include/controler/Controler.h"
#include <iostream>
#include <map>
#define STATION_ID 0         // 1 ID par station
#define VERSION_PROTOCOL 131 // EN 302 637-3 v1.3.1.
#define ECE_FRAME "/ece"
#define CAM_FRAME "/cam"
#define DENM_FRAME "/denm"
#define DENM_ID 1
#define CAM_ID 2
#define ECE_ID 8

/// CONSTRUCTEURS

Controler::Controler(ros::NodeHandle n) {

  this->setCount(0);

  /// SUBSCRIBERS

  this->sub_ece = n.subscribe<ece_msgs::ecemsg>(
      "controler_ece", 1000, boost::bind(sub_ece_callback, _1, *this));

  this->sub_DENM = n.subscribe<etsi_msgs::DENM>(
      "controler_DENM", 1000, boost::bind(sub_DENM_callback, _1, *this));

  this->sub_CAM = n.subscribe<etsi_msgs::CAM>(
      "controler_CAM", 1000, boost::bind(sub_CAM_callback, _1, *this));

  /// PUBLISHERS

  this->pub_ece = n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  this->pub_DENM = n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);
}

Controler::Controler(std::vector<Vehicle> vector_v,
                     std::vector<Platoon> vector_p, ros::NodeHandle n) {
  this->vector_v = vector_v;
  this->vector_p = vector_p;
  this->setCount(0);

  /// SUBSCRIBERS

  this->sub_ece = n.subscribe<ece_msgs::ecemsg>(
      "controler_ece", 1000, boost::bind(sub_ece_callback, _1, *this));

  this->sub_DENM = n.subscribe<etsi_msgs::DENM>(
      "controler_DENM", 1000, boost::bind(sub_DENM_callback, _1, *this));

  this->sub_CAM = n.subscribe<etsi_msgs::CAM>(
      "controler_CAM", 1000, boost::bind(sub_CAM_callback, _1, *this));

  /// PUBLISHERS

  this->pub_ece = n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  this->pub_DENM = n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);
}

/// DESTRUCTEURS

Controler::~Controler() {}

/// GETTERS

std::vector<Vehicle> Controler::getVectorV() { return this->vector_v; }

std::vector<Platoon> Controler::getVectorP() { return this->vector_p; }

ros::Publisher Controler::getPubEce() { return this->pub_ece; }

ros::Publisher Controler::getPubDENM() { return this->pub_DENM; }

ros::Subscriber Controler::getSubEce() { return this->sub_ece; }

ros::Subscriber Controler::getSubCAM() { return this->sub_CAM; }

ros::Subscriber Controler::getSubDENM() { return this->sub_DENM; }

uint64_t Controler::getCount() { return this->count; }

/// SETTERS

void Controler::setVectorV(std::vector<Vehicle> vector_v) {
  this->vector_v = vector_v;
}

void Controler::setVectorP(std::vector<Platoon> vector_p) {
  this->vector_p = vector_p;
}

void Controler::setPubEce(ros::Publisher pub) { this->pub_ece = pub; }

void Controler::setPubDENM(ros::Publisher pub) { this->pub_DENM = pub; }

void Controler::setSubEce(ros::Subscriber sub) { this->sub_ece = sub; }

void Controler::setSubCAM(ros::Subscriber sub) { this->sub_CAM = sub; }

void Controler::setSubDENM(ros::Subscriber sub) { this->sub_DENM = sub; }

void Controler::setCount(uint64_t count) { this->count = count; }

/// METHODS

void Controler::add_vehicle(Vehicle v) { this->vector_v.push_back(v); }

void Controler::add_platoon(Platoon p) { this->vector_p.push_back(p); }

/** @brief Lorsque reçoit un message init
ajouter à un platoon ou créer un platoon ou rien
 */
uint8_t Controler::init_receive(ece_msgs::ecemsg msg) {

  bool known_vehicle = false;

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit position actuelle de la voiture
  Position exp_pos =
      Position(msg.actual_position.latitude, msg.actual_position.longitude,
               msg.actual_position.altitude.value);

  // Recoit destination de la voiture
  Position exp_dest = Position(msg.platoon.reference_position.latitude,
                               msg.platoon.reference_position.longitude,
                               msg.platoon.reference_position.altitude.value);

  // Liste de véhicules
  // Regarde les destinations et si destination en commun : platoon : envoi des
  // messages avec les infos pour chaque voiture

  // Si vector de véhicules n'est pas vide
  if (!this->getVectorV().empty()) {

    // Itérateur
    std::vector<Vehicle>::iterator it = this->getVectorV().begin();

    // Tant qu'on n'est pas à la fin
    while (it != this->getVectorV().end() && !known_vehicle) {

      // Vérifier si véhicule est là ou pas
      if (it->getId() != exp_id) {

        // Ajout du véhicule dans le platoon
        Vehicle v = Vehicle(exp_id, exp_dest, exp_pos, 0);
        this->add_vehicle(v);
        known_vehicle = true;

        // Recherche platoon
        this->search_for_platoon(v);

      } else if (!it->getDest().comparePositions(exp_dest)) {

        // Destination différente : update
        it->setDest(exp_dest);
        if (it->getHasPlatoon()) {
          // TODO : Désinsertion
        }

        // Recherche platoon
        this->search_for_platoon(*it);
      }
    }
  }
}

void Controler::search_for_platoon(Vehicle v) {

  // Checker si un platoon avec destination dans la même zone de destination
  // Pour tous les platoons
  // Si vector de platoon n'est pas vide
  if (!this->vector_p.empty()) {

    // Itérateur
    std::vector<Platoon>::iterator it = this->vector_p.begin();

    // Tant qu'on n'est pas à la fin
    while (it != this->vector_p.end() && !v.getHasPlatoon()) {

      // Vérifier si destination est dans même zone
      if (it->getDest().compareZone(v.getDest())) {

        // Ajout
        it->addVehicle(v);
        v.setHasPlatoon(true);
      }
    }
  }

  // Sinon chercher parmi les voitures celles avec une même destination
  // Si pas de platoon trouvé
  if (!v.getHasPlatoon()) {

    // Si vector différent de vide
    if (!this->vector_v.empty()) {

      std::vector<Vehicle>::iterator it = this->vector_v.begin();

      // Tant qu'on n'est pas à la fin et que les deux véhicules n'ont pas de
      // platoon
      while (it != this->vector_v.end() && !v.getHasPlatoon() &&
             !it->getHasPlatoon()) {

        // Vérifier si destination est dans même zone
        if (it->getDest().compareZone(v.getDest())) {

          // On crée un platoon avec les 2 voitures
          Platoon p = Platoon();

          p.setDest(it->getDest());

          // TODO : speed dans vehicle et calcul à faire !
          p.setSpeed(0);

          // TODO : inter : calcul à faire !
          p.setInter(0);

          p.setNbVehicles(1);

          // Créer une map de Véicule et de rang
          std::map<uint8_t, uint8_t> map_rank;

          // TODO
          // Remplir la map avec le première véhicule qui est la voiture de tête
          p.getMapRank().insert(std::pair<uint8_t, uint8_t>(it->getId(), 0));

          // Envoi message initialisation
          this->init_send(p);

          // Envoi message insertion au deuxième véhicule
          // pour qu'il rejoigne la voiture de tête
          this->insert_send(v.getId());

          // Ajout du platoon dans le vector de platoon
          add_platoon(p);

          // Id du platoon : récupérer de l'index du vector de platoon
          p.setId(this->getVectorP().size());
        }
      }
    }
  }
}

/** @brief Permet d'envoyer un message ece de la phase init
 */
uint8_t Controler::init_send(Platoon p) {

  // Créer un message et le remplir
  ece_msgs::ecemsg msg;

  // Headers
  this->fill_header(msg, ECE_FRAME, ECE_ID);

  // Nb vehicules
  msg.platoon.nombre_vehicules = p.getNbVehicles();

  // ID platoon
  msg.platoon.id_platoon = p.getId();

  // Destination (lat, long, alt)
  msg.platoon.reference_position.latitude = p.getDest().getLat();
  msg.platoon.reference_position.longitude = p.getDest().getLon();
  msg.platoon.reference_position.altitude.value = p.getDest().getAlt();

  // Réemplir tableau ID/Rang avec la map
  if (!p.getMapRank().empty()) {

    for (int i = 0; i < p.getNbVehicles(); i++) {

      std::map<uint8_t, uint8_t>::iterator it = p.getMapRank().begin();
      msg.platoon.ids[i].ID = it->first;
      msg.platoon.ids[i].position = it->second;
      ++it;
    }
  }

  // Envoyer le msg init sur le topic des véhicules
  if (ros::ok()) {
    this->getPubEce().publish(msg);
  }
}

/** A FINIR
 */
uint8_t Controler::insert_receive(ece_msgs::ecemsg msg) {

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Check confirmation insertion
  if (msg.insertion.confirmation_insertion == true) {
    // Ajout : TODO
    // this->add_Vehicle(exp_id, exp_p);
  }
}

/** A FINIR
 */
uint8_t Controler::insert_send(uint8_t id_dest) {

  // Créer un message
  ece_msgs::ecemsg msg;

  // Headers
  this->fill_header(msg, ECE_FRAME, ECE_ID);

  // Remplir  basic_container
  msg.basic_container.ID_exp = STATION_ID;
  msg.basic_container.ID_dest = id_dest;
  msg.basic_container.phase.value = 1; // INSERTION

  // Calculer position d'insertion

  // Indiquer la position d'insertion
  // msg.insertion.reference_position = ???;

  // Envoyer message sur topic des véhicules
  if (ros::ok()) {
    this->getPubEce().publish(msg);
  }
}

uint8_t Controler::desinsert_receive(ece_msgs::ecemsg msg) {

  uint8_t rank = 0;
  uint8_t rank_found = 0;
  std::vector<uint8_t> ids_behind;

  // Header TODO

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Reçoit demande de sortie et vitesse de sortie
  bool exit_req = msg.desinsertion.demande_sortie;

  // Map temporaire
  std::map<uint8_t, uint8_t> map_temp;

  // Si demande de sortie :
  if (exit_req) {

    // Chercher le platoon de la voiture
    if (!this->vector_p.empty()) {

      std::vector<Platoon>::iterator it_p = this->getVectorP().begin();
      std::map<uint8_t, uint8_t>::iterator it_m = it_p->getMapRank().begin();

      while (it_p != this->getVectorP().end()) {

        while (it_m != it_p->getMapRank().end()) {

          // Clear puis rempli la map temporaire
          map_temp.clear();
          map_temp.insert(
              std::pair<uint8_t, uint8_t>(it_m->first, it_m->second));

          if (rank_found) {
            // Décrémente la position de 1 pour les véhicules derrière le
            // véhicule sortant
            map_temp[it_m->first] = it_m->second - 1;
            it_p->setMapRank(map_temp);
            ids_behind.push_back(it_m->first);
          }

          // Vérifier si véhicule présent dans platoon avec ID
          if (it_m->first == exp_id) {

            // Récupérer le rang de cette voiture dans le platoon
            rank = it_m->second;

            // Retirer la voiture du platoon (map)
            it_p->erase_map_elmt(it_m);
            map_temp.erase(it_m);

            rank_found = 1;

            // Décrémenter nb_véhicules du platoon
            it_p->setNbVehicles(it_p->getNbVehicles() - 1);
          }
        }
      }

      // Calcule la vitesse et le point de sortie du véhicule sortant TODO
      // Calcule l'interdistance et la vitesse de décélération des véhicules
      // TODO derrière le véhicule sortant Calcule la vitesse d'accélération par
      // la suite à tous les véhicules du platoon TODO

      // Envoie message:
      ece_msgs::ecemsg msg;

      // Remplir header
      this->fill_header(msg, ECE_FRAME, ECE_ID);

      // Remplir  basic_container
      msg.basic_container.ID_exp = STATION_ID;
      msg.basic_container.phase.value = 2; // DESINSERTION

      // Interdistance et vitesse de décélération aux véhicules derrière le
      // véhicule sortant(sur chaque topic de chaque véhicule)
      for (uint8_t i = 0; i < ids_behind.size(); i++) {

        msg.basic_container.ID_dest = ids_behind[i];
        // msg.vitesse_interdistance.speed = ? ? ? ; // ralentir
        // msg.vitesse_interdistance.interdistance = ? ? ? ;

        // Envoyer message sur topic des véhicules
        if (ros::ok()) {
          this->getPubEce().publish(msg);
        }
      }

      // Vitesse et point de sortie au véhicule sortant
      // C to Vd
      msg.basic_container.ID_dest = exp_id;
      // msg.desinsertion.speed = ? ? ? ;
      // msg.desinsertion.point_sortie.latitude = ? ? ? ;
      // msg.desinsertion.point_sortie.longitude = ? ? ? ;
      // msg.desinsertion.point_sortie.altitude.value = ? ? ? ;

      // Envoyer
      if (ros::ok()) {
        this->getPubEce().publish(msg);
      }

      // Envoie ensuite à tous les véhicules derrière la vitesse
      // d'accélération et leur nouvelle position dans P
    }
  }
}

uint8_t Controler::feux(ece_msgs::ecemsg msg) {

  // Si feu on envoie quelque chose
  // Envoyer ok ou non au platoon pour passer le feu
}

uint8_t Controler::freinage_urg(ece_msgs::ecemsg msg) {

  // ??? Reçoit d'un véhicule message freinage urgence
  // Renvoie aux autres véhicules l'info ?
}

void Controler::sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg,
                                 Controler &c) {

  ROS_INFO("I have received ece msg");
  int rep = 0;

  // Récupérer expéditeur
  uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer phase de platooning
  uint8_t phase = msg->basic_container.phase.value;

  switch (phase) {
  case 0:
    // Récup véhicules avec destinations pour créer un platoon
    // Envoie ensuite les infos à chaque véhicule concerné
    rep = c.init_receive(*msg);
    break;

  case 1:
    // Véhicule souhaitant s'insérer ? Ou uniquement confirmation insertion ?
    rep = c.insert_receive(*msg);
    break;

  case 2:
    rep = c.desinsert_receive(*msg);
    // Recoit :
    // Demande de sortie
    // Envoie :
    // Vitesse de sortie
    // Position/Point de sortie
    // Interdistance
    // Vitesse décélération
    // Vitesse accélération
    // Nouvelle position dans P
    // traitement_desinsert(msg, p);
    break;

  case 3:
    // Réception ici de message venant de feux
    // traitement_feux(msg, p);
    break;

  case 4:
    // ??? Reçoit d'un véhicule message freinage urgence
    // Renvoie aux autres véhicules l'info ?
    // traitement_freinage_urg(msg, p);
    break;

  default:
    break;
  }
}

void Controler::sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                  Controler &c) {

  ROS_INFO("I have received DENM msg");

  // Récupérer expéditeur
  // uint8_t exp = msg->basic_container.ID_exp; // EXISTE PAS

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

void Controler::sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                 Controler &c) {

  ROS_INFO("I have received CAM msg");

  // Récupérer expéditeur // EXISTE PAS
  // uint8_t exp = msg->basic_container.ID_exp;

  // Récupérer destinataire // EXISTE PAS
  // uint8_t dest = msg->basic_container.ID_dest;
}

void Controler::fill_header(ece_msgs::ecemsg &msg, char *frame,
                            uint8_t msg_id) {

  // Remplir header
  msg.header.seq = this->getCount();   // uint32 compteur incrémenter
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = frame;         // string

  // Remplir itsPduHeader
  msg.its_header.protocol_version = VERSION_PROTOCOL;
  msg.its_header.message_id = msg_id;
  msg.its_header.station_id = STATION_ID;

  this->increment_counter();
}

void Controler::increment_counter() { this->count++; }