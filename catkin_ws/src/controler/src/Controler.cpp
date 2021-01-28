#include "../include/Controler.h"
#include <iostream>
#include <map>

/// CONSTRUCTEURS

Controler::Controler() {

  this->setCount(0);

  /// SUBSCRIBERS /// UTILISER GETTERS POUR N

  this->sub_ece = this->n.subscribe<ece_msgs::ecemsg>(
      "controler_ece", 1000, boost::bind(sub_ece_callback, _1, this));

  //   this->sub_DENM = this->n.subscribe<etsi_msgs::DENM>(
  //       "controler_DENM", 1000, boost::bind(sub_DENM_callback, _1, this));

  this->sub_CAM = this->n.subscribe<etsi_msgs::CAM>(
      "controler_CAM", 1000000, boost::bind(sub_CAM_callback, _1, this));

  this->sub_SPAT = this->n.subscribe<etsi_msgs::SPAT>(
      "controler_SPAT", 1000000, boost::bind(sub_SPAT_callback, _1, this));

  /// PUBLISHERS

  this->pub_ece = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece", 1000);

  // this->pub_DENM = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM", 1000);
}

/// DESTRUCTEURS

Controler::~Controler() {}

/// GETTERS

std::vector<Vehicle *> Controler::getVectorV() { return this->vector_v; }

std::vector<Platoon *> Controler::getVectorP() { return this->vector_p; }

ros::Publisher Controler::getPubEce() { return this->pub_ece; }

ros::Publisher Controler::getPubDENM() { return this->pub_DENM; }

ros::Subscriber Controler::getSubEce() { return this->sub_ece; }

ros::Subscriber Controler::getSubCAM() { return this->sub_CAM; }

ros::Subscriber Controler::getSubDENM() { return this->sub_DENM; }

ros::Subscriber Controler::getSubSPAT() { return this->sub_SPAT; }

uint64_t Controler::getCount() { return this->count; }

ros::NodeHandle Controler::getNodeHandle() { return this->n; }

/// SETTERS

void Controler::setVectorV(std::vector<Vehicle *> vector_v) {
  this->vector_v = vector_v;
}

void Controler::setVectorP(std::vector<Platoon *> vector_p) {
  this->vector_p = vector_p;
}

void Controler::setPubEce(ros::Publisher pub) { this->pub_ece = pub; }

void Controler::setPubDENM(ros::Publisher pub) { this->pub_DENM = pub; }

void Controler::setSubEce(ros::Subscriber sub) { this->sub_ece = sub; }

void Controler::setSubCAM(ros::Subscriber sub) { this->sub_CAM = sub; }

void Controler::setSubDENM(ros::Subscriber sub) { this->sub_DENM = sub; }

void Controler::setSubSPAT(ros::Subscriber sub) { this->sub_SPAT = sub; }

void Controler::setCount(uint64_t count) { this->count = count; }

void Controler::setNodeHandle(ros::NodeHandle n) { this->n = n; }

/// METHODS

void Controler::add_vehicle(Vehicle *v) { this->vector_v.push_back(v); }

void Controler::add_platoon(Platoon *p) { this->vector_p.push_back(p); }

/** @brief Lorsque reçoit un message init
ajouter à un platoon ou créer un platoon ou rien
 */
uint8_t Controler::init_receive(ece_msgs::ecemsg &msg) {

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  // ROS_INFO("I have received ece msg, station_id : %d", header_station_id);

  if (header_message_id != ECE_ID) {
    return 0;
  }

  uint8_t count = 0;

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit position actuelle de la voiture
  float latitude = (float)msg.init.actual_position.latitude / 1024;
  float longitude = (float)msg.init.actual_position.longitude / 1024;
  float altitude = (float)msg.init.actual_position.altitude / 1024;

  Position exp_pos = Position(latitude, longitude, altitude);

  // ROS_INFO("station_id : %d  pos lat: %f, pos lon: %f", header_station_id,
  // exp_pos.getLat(), exp_pos.getLon());

  // Recoit destination de la voiture
  latitude = (float)msg.init.destination.latitude / 1024;
  longitude = (float)msg.init.destination.longitude / 1024;
  altitude = (float)msg.init.destination.altitude / 1024;

  Position exp_dest = Position(latitude, longitude, altitude);

  // ROS_INFO("station_id : %d dest lon : %f", header_station_id,
  // exp_dest.getLon());

  // Liste de véhicules
  // Regarde les destinations et si destination en commun : platoon : envoi des
  // messages avec les infos pour chaque voiture

  // Si vector de véhicules n'est pas vide
  if (!this->getVectorV().empty()) {

    for (int i = 0; i < this->getVectorV().size(); i++) {

      // Vérifier si véhicule est déjà connu
      if (this->getVectorV()[i]->getId() != exp_id) {

        count++;

      } else if (!this->getVectorV()[i]->getDest().comparePositions(exp_dest)) {

        // Destination différente : update
        this->getVectorV()[i]->setDest(exp_dest);
        // Recherche platoon
        this->search_for_platoon(this->getVectorV()[i]);
      }
    }

    // ROS_INFO("Count : %d", count);

    // Si le véhicule n'est pas dans la liste de véhicules
    if (count == this->getVectorV().size()) {
      // Ajout du véhicule dans la liste du contrôleur
      Vehicle *v = new Vehicle(exp_id, exp_dest, exp_pos, 0, 0);
      this->add_vehicle(v);

      // ROS_INFO("station_id : %d ajout pas vide", exp_id);

      //   for (int i = 0; i < this->getVectorV().size(); i++) {
      //     ROS_INFO("pas vide liste v: id %d",
      //     this->getVectorV()[i]->getId());
      //   }

      // Recherche platoon
      this->search_for_platoon(v);
    }
  } else {
    // Ajout du véhicule dans la liste du contrôleur
    Vehicle *v = new Vehicle(exp_id, exp_dest, exp_pos, 0, 0);
    this->add_vehicle(v);
    // ROS_INFO("ID vehicule ajoute ds la liste : %d et dedans %d", exp_id,
    // v->getId());

    // for (int i = 0; i < this->getVectorV().size(); i++) {
    //   ROS_INFO("vide liste v: id %d", this->getVectorV()[i]->getId());
    // }

    // Recherche platoon
    this->search_for_platoon(v);
  }

  return 1;
}

void Controler::search_for_platoon(Vehicle *v) {

  // ROS_INFO("search_for_platoon : Vehicule ID : %d", v.getId());

  // Checker si un platoon avec destination dans la même zone de destination
  // Pour tous les platoons
  // Si vector de platoon n'est pas vide
  if (!this->vector_p.empty()) {

    // ROS_INFO("Search for platoon");

    for (int i = 0; i < this->getVectorP().size(); i++) {

      // Tant qu'on n'est pas à la fin
      if (!v->getHasPlatoon()) {

        // Vérifier si destination est dans même zone
        if (this->getVectorP()[i]->getDest().compareZone(v->getDest())) {

          // Ajout véhicule au platoon
          this->getVectorP()[i]->addVehicle(v);
          v->setHasPlatoon(true);

          // Attendre d'avoir une connection avec deux subscribers au moins
          while (this->getPubEce().getNumSubscribers() < 3) {
          }

          // Envoie message à tous les véhciules du platoon pour mettre à jour
          this->insert_send(this->getVectorP()[i]);
        }
      }
    }
  }

  // Sinon chercher parmi les voitures celles avec une même destination
  // Si pas de platoon trouvé
  if (!v->getHasPlatoon()) {
    ROS_INFO("Platoon not found");
    this->new_platoon(v);
  } else {
    ROS_INFO("Platoon found");
  }
}

void Controler::new_platoon(Vehicle *v) {

  // Si vector différent de vide
  if (!this->vector_v.empty()) {

    // ROS_INFO("vector v pas empty");

    for (int i = 0; i < this->getVectorV().size(); i++) {

      // Si les deux véhicules n'ont pas de platoon
      if (!v->getHasPlatoon() && !this->getVectorV()[i]->getHasPlatoon()) {

        // Vérifier si destination est dans même zone
        if ((this->getVectorV()[i]->getDest().compareZone(v->getDest())) &&
            (this->getVectorV()[i]->getId() != v->getId())) {
          // ROS_INFO("compareZone = 1");

          // Faire ça dans confirmation insertion
          // On crée un platoon avec les 2 voitures
          Platoon *p = new Platoon();

          p->setId(this->getVectorP().size());

          p->setDest(v->getDest());

          // TODO : speed dans vehicle et calcul à faire !
          p->setSpeed(0);

          // TODO : inter : calcul à faire !
          p->setInter(0);

          p->setNbVehicles(2);

          // Créer une map de Véicule et de rang
          std::map<uint8_t, uint8_t> map_rank;

          // Remplir la map avec le première véhicule qui est la voiture de tête
          map_rank.insert(std::pair<uint8_t, uint8_t>(1, 0));

          // Remplir avec la deuxieme voiture trouvée
          map_rank.insert(std::pair<uint8_t, uint8_t>(2, 1));

          p->setMapRank(map_rank);

          // ROS_INFO("map check taille : %d (2 normalement)", map_rank.size());

          // Attendre d'avoir une connection avec deux subscribers au moins
          while (this->getPubEce().getNumSubscribers() < 2) {
          }

          // Envoi message initialisation
          // Il faut envoyer à tous les véhicules
          this->insert_send(p);

          // Ajout du platoon dans le vector de platoon
          this->add_platoon(p);
        }
      }
    }
  }
}

/** @brief Permet d'envoyer un message ece de la phase init
 */
uint8_t Controler::insert_send(Platoon *p) {

  // Créer un message et le remplir
  ece_msgs::ecemsg msg;

  // Headers
  this->fill_header(msg, ECE_FRAME, ECE_ID);

  msg.basic_container.ID_exp = ID_CONTROLER;
  msg.basic_container.phase.value = INSERT_PHASE;
  msg.basic_container.station_type.value = STATION_TYPE;

  // Nb vehicules
  msg.init.platoon.nombre_vehicules = p->getNbVehicles();

  // ID platoon
  msg.init.platoon.id_platoon = p->getId();

  // Destination (lat, long, alt)
  msg.init.platoon.destination.latitude = p->getDest().getLat();
  msg.init.platoon.destination.longitude = p->getDest().getLon();
  msg.init.platoon.destination.altitude = p->getDest().getAlt();

  std::map<uint8_t, uint8_t> map_rank = p->getMapRank();

  // Remplir tableau ID/Rang avec la map
  if (!map_rank.empty()) {
    std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
    for (int i = 0; i < p->getNbVehicles(); i++) {

      ece_msgs::IDs id;
      id.ID = it->first;
      id.position = it->second;
      msg.init.platoon.ids.push_back(id);
      ++it;
    }
  }

  // On envoie a tous les vehicules du platoon
  std::map<uint8_t, uint8_t>::iterator it = map_rank.begin();
  while (it != map_rank.end()) {

    // Changer le destinataire
    msg.basic_container.ID_dest = it->first;

    // Envoyer le msg init sur le topic des véhicules
    if (ros::ok()) {
      this->publish_ece_msg(msg);
    }
    ++it;
  }

  ROS_INFO("Insert send by controler");
}

// A finir mais plutôt compliqué pour le moment
/*uint8_t Controler::desinsert_receive(ece_msgs::ecemsg &msg) {

  uint8_t rank = 0;
  uint8_t rank_found = 0;
  std::vector<uint8_t> ids_behind;

  // Header
  uint8_t header_station_id = msg.its_header.station_id;
  uint8_t header_message_id = msg.its_header.message_id;

  if (header_message_id != ECE_ID) {
    return 0;
  }

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

      for (int i = 0; i < this->getVectorP().size(); i++) {

        std::map<uint8_t, uint8_t>::iterator it_m =
            this->getVectorP()[i]->getMapRank().begin();

        while (it_m != this->getVectorP()[i]->getMapRank().end()) {

          // Clear puis rempli la map temporaire
          map_temp.clear();
          map_temp.insert(
              std::pair<uint8_t, uint8_t>(it_m->first, it_m->second));

          if (rank_found) {
            // Décrémente la position de 1 pour les véhicules derrière le
            // véhicule sortant
            map_temp[it_m->first] = it_m->second - 1;
            this->getVectorP()[i]->setMapRank(map_temp);
            ids_behind.push_back(it_m->first);
          }

          // Vérifier si véhicule présent dans platoon avec ID
          if (it_m->first == exp_id) {

            // Récupérer le rang de cette voiture dans le platoon
            rank = it_m->second;

            // Retirer la voiture du platoon (map)
            this->getVectorP()[i]->erase_map_elmt(it_m);
            map_temp.erase(it_m);

            rank_found = 1;

            // Décrémenter nb_véhicules du platoon
            this->getVectorP()[i]->setNbVehicles(
                this->getVectorP()[i]->getNbVehicles() - 1);

            // Changer param
            // this->desinsert_send();
          }
        }
      }
    }
  }
  // Tout s'est bien passé
  return 1;
}*/

/*
void Controler::desinsert_send() {
  // Calcule la vitesse et le point de sortie du véhicule sortant TODO
  // Calcule l'interdistance et la vitesse de décélération des véhicules
  // TODO derrière le véhicule sortant Calcule la vitesse d'accélération
  // par la suite à tous les véhicules du platoon TODO

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
      // this->getPubEce().publish(msg);
      this->publish_ece_msg(msg);
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
    // this->getPubEce().publish(msg);
    this->publish_ece_msg(msg);
  }

  // Envoie ensuite à tous les véhicules derrière la vitesse
  // d'accélération et leur nouvelle position dans P
}
}
*/

void Controler::sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &p_msg,
                                 Controler *c) {

  ROS_INFO("I have received ece msg, %d", p_msg->header.seq);
  int rep = 0;

  // Récupérer phase de platooning
  uint8_t phase = p_msg->basic_container.phase.value;

  // On stocke la valeur du pointeur dans un message
  // pour pouvoir passer par reference dans les fonctions
  ece_msgs::ecemsg msg = *p_msg;

  switch (phase) {
  case 0:
    // Récup véhicules avec destinations pour créer un platoon
    // Envoie ensuite les infos à chaque véhicule concerné
    rep = c->init_receive(msg);
    break;

  case 2:
    // rep = c->desinsert_receive(msg);
    break;

  case 3:
    // ??? Reçoit d'un véhicule message freinage urgence
    // Renvoie aux autres véhicules l'info ?
    // traitement_freinage_urg(msg, p);
    break;

  default:
    break;
  }
}

uint8_t Controler::sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg,
                                     Controler *c) {
  uint8_t ret = 1;
  ROS_INFO("I have received DENM msg");

  // Vérifier que c'est bien un DENM
  uint8_t denm_id = msg->its_header.message_id;
  if (denm_id != DENM_ID) {
    return 0;
  }

  // Récupérer expéditeur
  uint8_t exp = msg->its_header.station_id;
}

uint8_t Controler::sub_SPAT_callback(const etsi_msgs::SPAT::ConstPtr &msg,
                                     Controler *c) {
  uint8_t ret = 1;
  ROS_INFO("I have received SPAT msg, val: %d", msg->state);

  // Vérifier que c'est bien un DENM
  //   uint8_t denm_id = msg->its_header.message_id;
  //   if (denm_id != DENM_ID) {
  //     return 0;
  //   }

  // Récupérer expéditeur
  // uint8_t exp = msg->its_header.station_id;
  uint8_t id_head = 0;
  bool perm = msg->state;

  // Parcourir le vecteur de platoon
  for (int i = 0; i < c->getVectorP().size(); i++) {
    // Récup position de la voiture de tête
    std::map<uint8_t, uint8_t> map_rank = c->getVectorP()[i]->getMapRank();
    std::map<uint8_t, uint8_t>::iterator it_m = map_rank.begin();
    while (it_m != map_rank.end()) {

      // ROS_INFO("id = %d, rank = %d", it_m->first, it_m->second);
      if (it_m->second == 0) {

        // Recup id véhicule de tête
        id_head = it_m->first;

        // Recup vehicule de tête dans le vecteur de tête
        for (int i = 0; i < c->getVectorV().size(); i++) {
          if (id_head == c->getVectorV()[i]->getId()) {

            // Check la zone par rapport à position du feu et feu rouge
            if (c->getVectorV()[i]->getActualPos().compareLightZone()) // pos_light.compareZone(it_v->getActualPos()))
            {
              // Envoyer message ece
              ROS_INFO("id head = %d", id_head);
              ece_msgs::ecemsg ece_msg;
              c->fill_header(ece_msg, ECE_FRAME, ECE_ID);
              ece_msg.basic_container.ID_exp = STATION_ID;
              ece_msg.basic_container.phase.value = LIGHT_PHASE;
              ece_msg.basic_container.ID_dest = id_head;
              ece_msg.feu.permission_feu = perm;
              c->publish_ece_msg(ece_msg);
            }
          }
        }
      }
      it_m++;
    }
  }
}

uint8_t Controler::sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg,
                                    Controler *c) {

  uint8_t ret = 1;
  // ROS_INFO("I have received CAM msg");

  // Vérifier que c'est bien un CAM
  uint8_t cam_id = msg->its_header.message_id;
  if (cam_id != CAM_ID) {
    return 0;
  }

  // Récupérer expéditeur
  uint8_t exp_id = msg->its_header.station_id;

  for (int i = 0; i < c->getVectorV().size(); i++) {
    // Si on trouve l'ID du véhicule
    if (c->getVectorV()[i]->getId() == exp_id) {

      // On récupère la vitesse et la renseigne dans le véhicule
      // Convertir km/h
      int8_t speed = (int8_t)msg->high_frequency_container.speed.value * 3.6;
      c->getVectorV()[i]->setSpeed(speed);

      // On récupère la position actuelle et la renseigne dans le véhicule
      // Récupérer en float
      float latitude = (float)msg->reference_position.latitude / 1024;
      float longitude = (float)msg->reference_position.longitude / 1024;
      float altitude = (float)msg->reference_position.altitude.value / 1024;
      Position p = Position(latitude, longitude, altitude);
      // ROS_INFO("(CAM_CB) latitude %f, longitude %f, id %d", latitude, longitude, c->getVectorV()[i]->getId());
      c->getVectorV()[i]->setActualPos(p);
    }
  }
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

uint8_t Controler::publish_ece_msg(ece_msgs::ecemsg msg) {
  // this->pub_ece = this->n.advertise<ece_msgs::ecemsg>("vehicles_ece",
  // 1000);
  this->pub_ece.publish(msg);
}

uint8_t Controler::publish_DENM_msg(etsi_msgs::DENM msg) {
  // this->pub_ece = this->n.advertise<etsi_msgs::DENM>("vehicles_DENM",
  // 1000);
  this->pub_DENM.publish(msg);
}