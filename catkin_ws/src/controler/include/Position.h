#include <stdint.h>
#include "ros/ros.h"
//#include <sys/types.h>

// A modifier selon les conditions de simulation
#define ZONE_DIFF 5

class Position {
private:
  float lat;
  float lon;
  float alt;

public:
  Position();
  Position(float lat, float lon, float alt);
  ~Position();

  float getLat();
  float getLon();
  float getAlt();

  void setLat(float lat);
  void setLon(float lon);
  void setAlt(float alt);

  // Ret 1 si positions identiques
  uint8_t comparePositions(Position p);

  // Ret 1 si positions assez proches (même zone)
  uint8_t compareZone(Position p);
  uint8_t compareLightZone();
};
