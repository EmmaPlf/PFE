#include "Position.h"

class Vehicle {
private:
  uint8_t id;
  Position dest;
  Position actual_pos;
  uint8_t has_platoon;

public:
  Vehicle();
  Vehicle(uint8_t id, Position dest, Position actual_pos, uint8_t has_platoon);
  ~Vehicle();

  uint8_t getId();
  Position getDest();
  Position getActualPos();
  uint8_t getHasPlatoon();

  void setId(uint8_t id);
  void setDest(Position dest);
  void setActualPos(Position actual_pos);
  void setHasPlatoon(uint8_t has_platoon);
};
