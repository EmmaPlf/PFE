#include "Platoon.h"
#include "../../devel/include/ece_msgs/ecemsg.h"
#include "../../devel/include/etsi_msgs/CAM.h"
#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"
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

  // Méthode pour checker destination et créer platoon après
  // ou modif platoon
  void search_Platoon(Vehicle v);

  //init
  uint8_t init(ece_msgs::ecemsg msg);
  //insert
  uint8_t insert(ece_msgs::ecemsg msg);
  //desinsert
  uint8_t desinsert(ece_msgs::ecemsg msg);
  //feux
  uint8_t feux(ece_msgs::ecemsg msg);
  //freinage_urg
  uint8_t freinage_urg(ece_msgs::ecemsg msg);
}