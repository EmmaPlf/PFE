#include "../include/Controler.h"

int main(int argc, char **argv) {

  ros::init(argc, argv, "controler");
  ROS_INFO("Controler launched");
  // ros::MultiThreadedSpinner spinner(4);

  Controler c = Controler();

  ros::Rate loop_rate(10);

    while (ros::ok()) {
      ros::spinOnce();
      loop_rate.sleep();
    }
}
