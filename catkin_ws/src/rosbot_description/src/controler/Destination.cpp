#include "../../include/controler/Destination.h"

Destination::Destination()
: lat(0), lon(0), alt(0)
{

}

Destination::Destination(int64_t lat, int64_t lon, int32_t alt)
{
    this.lat = lat;
    this.lon = lon;
    this.alt = alt;
}
    
Destination::~Destination()
{

}

int64_t Destination::getLat()
{
    return this.lat;
}

int64_t Destination::getLon()
{
    return this.lon;
}

int32_t Destination::getAlt()
{
    return this.alt;
}

void Destination::setLat(int64_t lat)
{
    this.lat = lat;
}

void Destination::setLon(int64_t lon)
{
    this.lon = lon;
}

void Destination::setAlt(int32_t alt)
{
    this.alt = alt;
}
