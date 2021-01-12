#include "../../include/controler/Vehicle.h"

Vehicle::Vehicle()
: id(0), pos(0)
{

}

Vehicle::Vehicle(int8_t id, int8_t pos)
{
    this->id = id;
    this->pos = pos;
}
    
Vehicle::~Vehicle()
{

}

int8_t Vehicle::getId()
{
    return this->id;
}

int8_t Vehicle::getPos()
{
    return this->pos;
}

void Vehicle::setId(int8_t id)
{
    this->id = id;
}

void Vehicle::setPos(int8_t pos)
{
    this->pos = pos;
}
