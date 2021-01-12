#include "../../include/controler/Platoon.h"

Platoon::Platoon() {
  this->dest = Position();
  this->speed = 0;
  this->inter = 0;
  this->nb_vehicles = 0;
}

Platoon::Platoon(Position dest, uint16_t speed, uint8_t inter,
                 std::vector<Vehicle> vehicles, uint8_t nb_vehicles) {
  this->dest = dest;
  this->speed = speed;
  this->inter = inter;
  this->vehicles = vehicles;
  this->nb_vehicles = nb_vehicles;
}

Platoon::~Platoon() {}

Position Platoon::getDest() { return dest; }

uint16_t Platoon::getSpeed() { return speed; }

uint8_t Platoon::getInter() { return inter; }

std::vector<Vehicle> Platoon::getVehicles() { return vehicles; }

uint8_t Platoon::getNbVehicles() { return nb_vehicles; }

void Platoon::setDest(Position dest) { this->dest = dest; }

void Platoon::setSpeed(uint16_t speed) { this->speed = speed; }

void Platoon::setInter(uint8_t inter) { this->inter = inter; }

void Platoon::setVehicles(std::vector<Vehicle> vehicles) {
  this->vehicles = vehicles;
}

void Platoon::setNbVehicles(uint8_t nb_vehicles) {
  this->nb_vehicles = nb_vehicles;
}

void Platoon::addVehicle(Vehicle v) { vehicles.push_back(v); }