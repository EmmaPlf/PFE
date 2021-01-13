#include "../../include/controler/Controler.h"

int main(int argc, char **argv) {

  ros::init(argc, argv, "controler");
  ros::NodeHandle n;

  Controler c = Controler(n);

  ros::Rate loop_rate(10);
}
