#include "../../include/controler/Controler.h"


Controler::Controler()
{

}

Controler::Controler(std::vector<Vehicle> vector_v, std::vector<Platoon> vector_p)
{
  this->vector_v = vector_v;
  this->vector_p = vector_p;
}

Controler::~Controler()
{

}

std::vector<Vehicle> Controler::getVectorV()
{
  return this->getVectorV;
}

std::vector<Platoon> Controler::getVectorP()
{
  return this->getVectorP;
}

void Controler::setVectorV(std::vector<Vehicle> vector_v)
{
  this->vector_v = vector_v;
}

void Controler::setVectorP(std::vector<Platoon> vector_p)
{
  this->vector_p = vector_p;
}

void Controler::add_Vehicle(Vehicle v)
{
  this->vector_v.push_back(v);
}

void Controler::add_Platoon(Platoon p)
{
  this->vector_p.push_back(p);
}

void Controler::search_Platoon(Vehicle v)
{

  // Checker si un platoon avec destination dans la même zone de destination
  // Pour tous les platoons
  // Si vector différent de vide
  if(!this->vector_p.empty())
  {
    // Itérateur
    std::vector<Platoon>::iterator it = this->vector_p.begin();
    // Tant qu'on n'est pas à la fin
    while(it != this->vector_p.end() && !v.getHasPlatoon())
    {
      // Vérifier si destination est dans même zone
      if(it->getDest().compareZone(v.getDest))
      {
        // Ajout
        it->addVehicle(v);
        v.setHasPlatoon(TRUE);
      }
    }
  }

  // Sinon chercher parmi les voitures celles avec une même destination
  // Si pas de platoon trouvé
  if(!v.getHasPlatoon())
  {
    // Si vector différent de vide
    if(!this->vector_v.empty())
    {
      std::vector<Vehicle>::iterator it = this->vector_v.begin();
      // Tant qu'on n'est pas à la fin et que les deux véhicules n'ont pas de platoon
      while(it != this->vector_v.end() && !v.getHasPlatoon() && !this->getHasPlatoon())
      {
        // Vérifier si destination est dans même zone
        if(it->getDest().compareZone(v.getDest()))
        {
          // On crée un platoon avec les 2 voitures
          Platoon p = Platoon();
          p.setDest(it->getDest());
          // TODO : speed dans vehicle et calcul à faire !
          p.setSpeed(0);
          // TODO : inter : calcul à faire !
          p.setInter(0);
          // TODO :: rank : selon la position
          std::map<Vehicle, uint8_t> map_rank;

          // TODO
          // Première véhicule devient voiture de tête
          // Envoi message initialisation
          // Envoi message insertion au deuxième véhicule
          // pour qu'il rejoigne la voiture de tête
          
          // Ajout du platoon dans le vector de platoon
          this->.add_Platoon(p);
          // TODO: Id récupérer de l'index du vector de platoon
          p.setId();


        }
      }
    }

  }
  
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
    //Recoit :
    //Demande de sortie
    //Envoie :
    //Vitesse de sortie
    //Position/Point de sortie
    //Interdistance
    //Vitesse décélération
    //Vitesse accélération
    //Nouvelle position dans P
    traitement_desinsert(msg, p);
    break;

  case 3:
    // Réception ici de message venant de feux
    traitement_feux(msg, p);
    break;

  case 4:
    // ??? Reçoit d'un véhicule message freinage urgence
    // Renvoie aux autres véhicules l'info ?
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


uint8_t Controler::init(ece_msgs::ecemsg msg) {

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
  if(!this->getVectorV().empty())
  {
    // Itérateur
    std::vector<Vehicle>::iterator it = c.getVectorV().begin();

    // Tant qu'on n'est pas à la fin
    while(it != this->getVectorV().end() && !known_vehicle)
    {
      // Vérifier si véhicule est là ou pas
      if(it->getId() != exp_id)
      {
        // Ajout
        Vehicle v = Vehicle(exp_id, exp_p);
        this->add_Vehicle(v);
        known_vehicle = true;
        // Recherche platoon
        this->search_Platoon(v);

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

uint8_t Controler::insert(ece_msgs::ecemsg msg) {
  
  // Expéditeur
  uint8_t exp_id = msg.basic_container.ID_exp;

  // Recoit destination de la voiture ???
  Position exp_p = Position(msg.platoon.reference_position.latitude, 
  msg.platoon.reference_position.longitude,
  msg.platoon.reference_position.alt);

  // Envoi informations du platoon au véhicule ?

  // Ajout
  this->add_Vehicle(exp_id, exp_p);
}

uint8_t Controler::desinsert(ece_msgs::ecemsg msg) {

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

uint8_t Controler::feux(ece_msgs::ecemsg msg) {

  // Si feu on envoie quelque chose
  // Envoyer ok ou non au platoon pour passer le feu
}

uint8_t Controler::freinage_urg(ece_msgs::ecemsg msg) {

  // ??? Reçoit d'un véhicule message freinage urgence
  // Renvoie aux autres véhicules l'info ?
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