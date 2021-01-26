#include "../../devel/include/etsi_msgs/SPAT.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include <cmath>
#include <iostream>
#include <sstream>

#define STATION_ID 5 // 1 ID par station

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "light");
  ros::Time::init();
  ros::Rate loop_rate(5);

  // Construction d'un feux
  uint16_t posx = 0;
  uint16_t posy = 0;
  bool state = 0; // Vert
  ros::Time last = ros::Time::now();
  ros::Time now;

  // Publish topic controler spat
  ros::NodeHandle n;
  ros::Publisher pub_spat =
      n.advertise<etsi_msgs::SPAT>("controler_SPAT", 1000);

  etsi_msgs::SPAT msg;

  while (ros::ok()) {

    now = ros::Time::now();

    // Time stamp en secondes
    if (now - last > ros::Duration(10, 0)) {
      last = ros::Time::now();
      state = !state;
    }

    // Indique l'état du feux dans le message
    msg.state = state;
    pub_spat.publish(msg);

    loop_rate.sleep();
  }

  return 0;
}