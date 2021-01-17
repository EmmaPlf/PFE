#include "../include/Vehicle.h"

/// CONSTRUCTEURS

Vehicle::Vehicle() : id(0), dest(0, 0, 0), speed(0) {}

Vehicle::Vehicle(uint8_t id, Position dest, Position actual_pos, int8_t speed,
                 uint8_t has_platoon) {
  this->id = id;
  this->dest = dest;
  this->actual_pos = actual_pos;
  this->speed = speed;
  this->has_platoon = has_platoon;

}
/// DESTRUCTEUR

Vehicle::~Vehicle() {}

/// GETTER

uint8_t Vehicle::getId() { return this->id; }

Position Vehicle::getDest() { return this->dest; }

Position Vehicle::getActualPos() { return this->actual_pos; }

uint8_t Vehicle::getHasPlatoon() { return this->has_platoon; }

int8_t Vehicle::getSpeed() { return this->speed; }


/// SETTER

void Vehicle::setId(uint8_t id) { this->id = id; }

void Vehicle::setDest(Position dest) { this->dest = dest; }

void Vehicle::setActualPos(Position actual_pos) {
  this->actual_pos = actual_pos;
}

void Vehicle::setHasPlatoon(uint8_t has_platoon) {
  this->has_platoon = has_platoon;
}

void Vehicle::setSpeed(int8_t speed) { this->speed = speed; }
