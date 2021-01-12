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
    std::map<Vehicle, Position>::iterator it = c.getMapVP().begin();
    while (it != c.getMapVP().end())
    {
      // Accessing KEY from element pointed by it.
      Vehicle v = it->first;
      // Accessing VALUE from element pointed by it.
      Position p = it->second;
      // On regarde si le véhicule a déjà été ajouté ou pas
      if(v.getId != exp_id && !p.comparePositions())
      {
        //TODO
        // Comment faire position ?
        Vehicle exp_v = Vehicle(exp_id, );
        // On ajoute
        c.add_Vehicle(exp_v, exp_p);
        // On informe le véhicule si plusieurs véhicules ont aussi la même destination ?
        //TODO
      }
      // Increment the Iterator to point to next entry
      it++;
    }
  }







  //FAUX!!!

  // Remplissage de l'objet Platoon avec les informations du message
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
  // Remplissage de l'objet Platoon avec les informations du message
  
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
  // Remplissage de l'objet Platoon avec les informations du message
}

void traitement_feux(ece_msgs::ecemsg msg, Platoon &p) {
  // Remplissage de l'objet Platoon avec les informations du message
}

void traitement_freinage_urg(ece_msgs::ecemsg msg, Platoon &p) {
  // Remplissage de l'objet Platoon avec les informations du message
}