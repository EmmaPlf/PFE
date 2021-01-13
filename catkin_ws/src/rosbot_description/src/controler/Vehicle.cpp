#include "../../include/controler/Vehicle.h"

Vehicle::Vehicle()
: id(0), dest(0,0,0)
{

}

Vehicle::Vehicle(int8_t id, Position dest, uint8_t has_platoon)
{
    this->id = id;
    this->dest = dest;
    this->has_platoon = has_platoon;
}
    
Vehicle::~Vehicle()
{

}

int8_t Vehicle::getId()
{
    return this->id;
}

Position Vehicle::getDest()
{
    return this->dest;
}

Position Vehicle::getActualPos()
{
    return this->actual_pos;
}

uint8_t Vehicle::getHasPlatoon()
{
    return this->has_platoon;
}

void Vehicle::setId(int8_t id)
{
    this->id = id;
}

void Vehicle::setDest(Position dest)
{
    this->dest = dest;
}

void Vehicle::setActualPos(Position actual_pos)
{
    this->actual_pos = actual_pos;
}

void Vehicle::setHasPlatoon(uint8_t has_platoon)
{
    this->has_platoon = has_platoon;
}
