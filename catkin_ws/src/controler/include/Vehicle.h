#include "Position.h"

class Vehicle {
private:
  uint8_t id;
  Position dest;
  Position actual_pos;
  int8_t speed;
  uint8_t has_platoon;
  

public:
  Vehicle();
  Vehicle(uint8_t id, Position dest, Position actual_pos, int8_t speed,
          uint8_t has_platoon);
  ~Vehicle();

  /// GET
  uint8_t getId();
  Position getDest();
  Position getActualPos();
  uint8_t getHasPlatoon();
  int8_t getSpeed();
 

  /// SET
  void setId(uint8_t id);
  void setDest(Position dest);
  void setActualPos(Position actual_pos);
  void setHasPlatoon(uint8_t has_platoon);
  void setSpeed(int8_t speed);

};
