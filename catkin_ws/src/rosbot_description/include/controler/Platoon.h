#include "Destination.h"
#include "Vehicle.h"
#include <vector>

class Platoon 
{
  private:

    Destination dest;
    uint16_t speed;
    uint8_t inter;
    std::vector<Vehicle> vehicles;
    uint8_t nb_vehicles;

  public:

    Platoon();
    Platoon(Destination dest, uint16_t speed, uint8_t inter, std::vector<Vehicle> vehicles, uint8_t nb_vehicles);
    ~Platoon();

    Destination getDest();
    uint16_t getSpeed();
    uint8_t getInter();
    std::vector<Vehicle> getVehicles();
    uint8_t getNbVehicles();

    void setDest(Destination dest);
    void setSpeed(uint16_t speed);
    void setInter(uint8_t inter);
    void setVehicles(std::vector<Vehicle> vehicles);
    void setNbVehicles(uint8_t nb_vehicles);
};
