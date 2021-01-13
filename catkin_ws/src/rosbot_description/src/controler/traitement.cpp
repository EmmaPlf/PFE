#include "../../include/controler/traitement.h"

void traitement_init(ece_msgs::ecemsg msg, Controler &c) {

  bool known_vehicle = false;

  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit destination de la voiture 
  Position exp_p = Position(msg.basic_container.reference_position.latitude, 
  msg.basic_container.reference_position.longitude,
  msg.basic_container.reference_position.alt);

  // Liste de véhicules
  // Regarde les destinations et si destination en commun : platoon : envoi des messages avec les infos pour chaque voiture

  // Si vector différent de vide
  if(!c.getVectorV().empty())
  {
    // Itérateur
    std::vector<Vehicle>::iterator it = c.getVectorV().begin();

    // Tant qu'on n'est pas à la fin
    while(it != c.getVectorV().end() && !known_vehicle)
    {
      // Vérifier si véhicule est là ou pas
      if(it->getId() != exp_id)
      {
        // Ajout
        Vehicle v = Vehicle(exp_id, exp_p);
        c.add_Vehicle(v);
        known_vehicle = true;
        // Recherche platoon
        c.search_Platoon(v);

      }else if(!it->getDest().comparePositions(exp_p))
      {
        // Destination différente : update
        it->setDest(exp_p);
        if(it->getHasPlatoon())
        {
          // TODO : Désinsertion
        }
        // Recherche platoon
        c.search_Platoon(*it);
      }
      
    }
  }

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