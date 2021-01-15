#include <stdint.h>
//#include <sys/types.h>

// A modifier selon les conditions de simulation
#define ZONE_DIFF 5

class Position {
private:
  int64_t lat;
  int64_t lon;
  int32_t alt;

public:
  Position();
  Position(int64_t lat, int64_t lon, int32_t alt);
  ~Position();

  int64_t getLat();
  int64_t getLon();
  int32_t getAlt();

  void setLat(int64_t lat);
  void setLon(int64_t lon);
  void setAlt(int32_t alt);

  // Ret 1 si positions identiques
  uint8_t comparePositions(Position p);

  // Ret 1 si positions assez proches (même zone)
  uint8_t compareZone(Position p);
};
