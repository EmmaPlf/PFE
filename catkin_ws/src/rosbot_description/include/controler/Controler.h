#include "Platoon.h"
#include <vector>

#define TRUE 1
#define FALSE 0

class Controler {

private:
  std::vector<Vehicle> vector_v;
  std::vector<Platoon> vector_p;

public:
  Controler();
  Controler(std::vector<Vehicle> vector_v, std::vector<Platoon> vector_p);
  ~Controler();

  std::vector<Vehicle> getVectorV();
  std::vector<Platoon> getVectorP();

  void setVectorV(std::vector<Vehicle>);
  void setVectorP(std::vector<Platoon>);

  sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg, Controler &c);  
  sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg, Controler &c);
  sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg, Controler &c);

  // Ajouter un véhicule
  void add_Vehicle(Vehicle v);

  // Ajouter un platoon
  void add_Platoon(Platoon p);

  // Méthode pour calculer les destinations proches

  // Méthode pour checker destination et créer platoon après
  // ou modif platoon
  void search_Platoon(Vehicle v);

}