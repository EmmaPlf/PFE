#include "../include/Position.h"

Position::Position() : lat(0), lon(0), alt(0) {}

Position::Position(float lat, float lon, float alt) {
  this->lat = lat;
  this->lon = lon;
  this->alt = alt;
}

Position::~Position() {}

float Position::getLat() { return this->lat; }

float Position::getLon() { return this->lon; }

float Position::getAlt() { return this->alt; }

void Position::setLat(float lat) { this->lat = lat; }

void Position::setLon(float lon) { this->lon = lon; }

void Position::setAlt(float alt) { this->alt = alt; }

// Ret 1 si positions identiques
uint8_t Position::comparePositions(Position p) {
  uint8_t ret = 0;

  if (this->lat == p.lat && this->lon == p.lon && this->alt == p.alt) {
    ret = 1;
  }

  return ret;
}

uint8_t Position::compareZone(Position p) {
  uint8_t ret = 0;

  if (((this->lat >= p.getLat() - ZONE_DIFF) &&
       (this->lat <= p.getLat() + ZONE_DIFF)) ||
      ((this->lon >= p.getLon() - ZONE_DIFF) &&
       (this->lon <= p.getLon() + ZONE_DIFF))) {
    ret = 1;
  }

  return ret;
}

uint8_t Position::compareLightZone()
{
  uint8_t ret = 0;

  // Position du feu :
  // -1*1024 en lat
  // -0.5*1024 et 0.5*1024 en long
  ROS_INFO("lat = %f", this->getLat());
  ROS_INFO("lon = %f", this->getLon());
  if (((this->getLat() >= -1.1) && (this->getLat() <= -0.6) && ((this->getLon() >= -0.5) && (this->getLon() <= 0.5))))
  {
    ret = 1;
  }

  return ret;
}