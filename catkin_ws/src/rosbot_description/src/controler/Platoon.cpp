#include "../../include/controler/Platoon.h"

Platoon::Platoon() {
  this->dest = Position();
  this->speed = 0;
  this->inter = 0;
  this->nb_vehicles = 0;
}

Platoon::Platoon(uint8_t id, Position dest, uint16_t speed, uint8_t inter,
                 std::map<Vehicle, uint8_t> vehicles, uint8_t nb_vehicles) {
  this->id = id;
  this->dest = dest;
  this->speed = speed;
  this->inter = inter;
  this->map_rank = map_rank;
  this->nb_vehicles = nb_vehicles;
}

Platoon::~Platoon() {}

uint8_t Platoon::getId() 
{
  return this->id;
}

Position Platoon::getDest() { return this->dest; }

uint16_t Platoon::getSpeed() { return this->speed; }

uint8_t Platoon::getInter() { return this->inter; }

std::map<Vehicle, uint8_t> Platoon::getMapRank() { return this->map_rank; }

uint8_t Platoon::getNbVehicles() { return this->nb_vehicles; }

void Platoon::setId(uint8_t id)
{
  this->id = id;
}

void Platoon::setDest(Position dest) { this->dest = dest; }

void Platoon::setSpeed(uint16_t speed) { this->speed = speed; }

void Platoon::setInter(uint8_t inter) { this->inter = inter; }

void Platoon::setMapRank(std::map<Vehicle, uint8_t> map_rank) {
  this->map_rank = map_rank;
}

void Platoon::setNbVehicles(uint8_t nb_vehicles) {
  this->nb_vehicles = nb_vehicles;
}

void Platoon::addVehicle(Vehicle v) { 
  // ID position ???
  //Appel fonction pour checker position et déterminer rang dans le platoon
  //TODO
  vehicles.insert(std::pair<Vehicle, uint_8>(v, 0)); 
}