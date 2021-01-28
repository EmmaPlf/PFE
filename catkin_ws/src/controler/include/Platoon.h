#include "Vehicle.h"
#include <map>

class Platoon {
private:
  uint8_t id;
  Position dest;
  uint16_t speed;
  uint8_t inter;
  std::map<uint8_t, uint8_t> map_rank;
  uint8_t nb_vehicles;

public:
  Platoon();
  Platoon(uint8_t id, Position dest, uint16_t speed, uint8_t inter,
          std::map<uint8_t, uint8_t> map_rank, uint8_t nb_vehicles);
  ~Platoon();

  uint8_t getId();
  Position getDest();
  uint16_t getSpeed();
  uint8_t getInter();
  std::map<uint8_t, uint8_t> getMapRank();
  uint8_t getNbVehicles();

  void setId(uint8_t id);
  void setDest(Position dest);
  void setSpeed(uint16_t speed);
  void setInter(uint8_t inter);
  void setMapRank(std::map<uint8_t, uint8_t> map_rank);
  void setNbVehicles(uint8_t nb_vehicles);
  void erase_map_elmt(std::map<uint8_t, uint8_t>::iterator it);

  // Ajouter véhicule au platoon
  void addVehicle(Vehicle* v);
};
