#include "../../include/controler/Position.h"

Position::Position() : lat(0), lon(0), alt(0) {}

Position::Position(int64_t lat, int64_t lon, int32_t alt) {
  this->lat = lat;
  this->lon = lon;
  this->alt = alt;
}

Position::~Position() {}

int64_t Position::getLat() { return this->lat; }

int64_t Position::getLon() { return this->lon; }

int32_t Position::getAlt() { return this->alt; }

void Position::setLat(int64_t lat) { this->lat = lat; }

void Position::setLon(int64_t lon) { this->lon = lon; }

void Position::setAlt(int32_t alt) { this->alt = alt; }

//Ret 1 si positions identiques
uint8_t Position::comparePositions(Position p)
{
  uint8_t ret = 0;

  if(this->lat == p.lat && this->lon == p.lon && 
  this->alt == p.alt)
  {
    ret = 1;
  }

  return ret;
}

uint8_t Position::compareZone(Position p)
{
  uint8_t ret = 0;

  if(((this->lat >= p.getLat() - ZONE_DIFF) && (this->lat <= p.getLat() + ZONE_DIFF)) 
  || ((this->lon >= p.getLon() - ZONE_DIFF) && (this->lon <= p.getLon() + ZONE_DIFF)))
  {
    ret = 1;
  }


  return ret;
}
