#include "../../include/controler/traitement.h"

void traitement_init(ece_msgs::ecemsg msg, Controler &c) {

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit destination de la voiture ???
  Position exp_p = Position(msg.platoon.reference_position.latitude, 
  msg.platoon.reference_position.longitude,
  msg.platoon.reference_position.alt);

  // Liste de véhicules
  // Regarde les destinations et si destination en commun : platoon : envoi des messages avec les infos pour chaque voiture

  // Si map différente de vide
  if(!c.getMapVP().empty())
  {
    // Création itérateur
    std::map<Vehicle, Position>::iterator it = c.getMapVP().begin();
    // Tant qu'on n'est pas à la fin de la map
    while (it != c.getMapVP().end())
    {
      // Récupération objet véhicule
      Vehicle v = it->first;
      // Récupération objet position
      Position p = it->second;
      // On regarde si le véhicule a déjà été ajouté ou pas
      if(v.getId != exp_id && !p.comparePositions())
      {
        // TODO : Comment faire position ?
        Vehicle exp_v = Vehicle(exp_id, ???);
        // Ajout
        c.add_Vehicle(exp_v, exp_p);
        // TODO : On informe le véhicule si plusieurs véhicules ont aussi la même destination ?
      }
      // Increment the Iterator to point to next entry
      it++;
    }
  }

  // Comment faire pour attendre que tous les véhicules aient envoyé
  // leurs infos et ensuite voir si destination commune ou pas ?


  //FAUX!!!

  /*Position dest = Position();
  dest.setLat(msg.platoon.reference_position.latitude);
  dest.setLon(msg.platoon.reference_position.longitude);
  dest.setAlt(msg.platoon.reference_position.altitude.value);
  p.setDest(dest);

  // Attention vitesse en 0.01 m/s
  p.setSpeed(msg.vitesse_interdistance.speed.value);

  p.setInter(msg.vitesse_interdistance.interdistance);

  p.setNbVehicles(msg.platoon.nombre_vehicules);

  // Vecteur de véhicules
  Vehicle v = Vehicle();
  for (int i = 0; i < p.getNbVehicles(); i++) {
    v.setId(msg.platoon.IDs[i]);
    v.setPos(msg.platoon.position[i]);
    p.addVehicle(v);
  }*/
}

void traitement_insert(ece_msgs::ecemsg msg, Controler &c) {
  
  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit destination de la voiture ???
  Position exp_p = Position(msg.platoon.reference_position.latitude, 
  msg.platoon.reference_position.longitude,
  msg.platoon.reference_position.alt);

  // Envoi informations du platoon au véhicule ?

  // Ajout
  c.add_Vehicle(exp_id, exp_p);
}

void traitement_desinsert(ece_msgs::ecemsg msg, Platoon &p) {

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Reçoit demande de sortie et vitesse de sortie
  bool demande_sortie = msg.desinsertion.demande_sortie;

  // Si demande de sortie :

    // "Recalcule" les différentes positions des voitures du platoon
    // Calcule la vitesse et le point de sortie
    // Calcule l'interdistance et la vitesse de décélération des véhicules derrière le véhicule sortant
    // Calcule la vitesse d'accélération par la suite à tous les véhicules du platoon

    // Envoie :
    // Vitesse et point de sortie au véhicule sortant
    // Interdistance et vitesse de décélération aux véhicules derrière 
    // le véhicule sortant
    // Envoie ensuite à tous les véhicules du platoon la vitesse
    // d'accélération et leur nouvelle position dans P


}

void traitement_feux(ece_msgs::ecemsg msg, Platoon &p) {

  // Si feu envoie quelque chose
  // Envoyer ok ou non au platoon pour passer le feu
}

void traitement_freinage_urg(ece_msgs::ecemsg msg, Platoon &p) {

  // ??? Reçoit d'un véhicule message freinage urgence
  // Renvoie aux autres véhicules l'info ?
}