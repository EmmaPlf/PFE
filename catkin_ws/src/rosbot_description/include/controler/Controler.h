#include "Platoon.h"
#include <map>

class Controler {

private:
  Platoon p;
  std::map<Vehicle, Position> map_v_p;

public:
  Controler();
  Controler(Platoon p, std::map<Vehicle, Position> map_v_p);
  ~Controler();

  Platoon getPlatoon();
  std::map<Vehicle, Position> getMapVP();

  void setPlatoon(Platoon p);
  void setMapVP(std::map<Vehicle, Position>);

  sub_ece_callback(const ece_msgs::ecemsg::ConstPtr &msg, Controler &c);  
  sub_DENM_callback(const etsi_msgs::DENM::ConstPtr &msg, Controler &c);
  sub_CAM_callback(const etsi_msgs::CAM::ConstPtr &msg, Controler &c);

  void add_Vehicle(Vehicle v, Position p);

}