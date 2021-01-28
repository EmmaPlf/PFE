#include "../../devel/include/etsi_msgs/SPAT.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include <cmath>
#include <iostream>
#include <sstream>

#define STATION_ID 5 // 1 ID par station
#define PAUSE_DURATION 30

int main(int argc, char **argv) {

  // INIT
  ros::init(argc, argv, "light");
  ros::Time::init();
  ros::Rate loop_rate(5);

  // Construction d'un feux
  uint16_t posx = 0;
  uint16_t posy = 0;
  uint8_t count = 0;
  bool state = 1; // Vert
  ros::Time last = ros::Time::now();
  ros::Time now;

  // Publish topic controler spat
  ros::NodeHandle n;
  ros::Publisher pub_spat = n.advertise<etsi_msgs::SPAT>("controler_SPAT", 1000);

  etsi_msgs::SPAT msg;

  while (ros::ok()) {

    now = ros::Time::now();
    // ROS_INFO("last = %d now = %d state = %d", last, now, state);

    // Time stamp en secondes
    // if (now - last > ros::Duration(10, 0)) {
    //   last = ros::Time::now();
    //   state = !state;
    // }
    ROS_INFO("count = %d, state = %d", count,state);
    if (count == PAUSE_DURATION)
    {
      state = !state;
      count = 0;
    }

    // Indique l'état du feux dans le message
    msg.state = state;
    pub_spat.publish(msg);

    loop_rate.sleep();
    count++;
  }

  return 0;
}