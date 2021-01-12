#include <sys/types.h>

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

  //Ret 1 si positions identiques
  int comparePositions(Position p);
};
