#include "../../devel/include/etsi_msgs/CAM.h"
#include "ros/ros.h"
#include <sstream>

void fill_data(etsi_msgs::CAM &msg, int count);

int main(int argc, char **argv) {
  ROS_INFO("Pub on");
  ros::init(argc, argv, "publisher_msg");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<etsi_msgs::CAM>("topic_cam", 1000000);
  ros::Rate loop_rate(10);

  int count = 0;

  etsi_msgs::CAM msg;

  while (ros::ok()) {
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    fill_data(msg, count);
    ++count;
  }

  return 0;
}

void fill_data(etsi_msgs::CAM &msg, int count) {

  msg.generation_delta_time = 0; // milliseconds since 2004 modulo 2^16 uint16_t

  /*  # Package std_msgs
      # Standard metadata for higher-level stamped data types.
      # This is generally used to communicate timestamped data
      # in a particular coordinate frame.
      #
      # sequence ID: consecutively increasing ID
      uint32 seq
      # Two-integer timestamp that is expressed as:
      # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is
     called 'secs') # * stamp.nsec: nanoseconds since stamp_secs (in Python the
     variable is called 'nsecs') # time-handling sugar is provided by the client
     library time stamp # Frame this data is associated with string frame_id
  */
  msg.header.seq = count;              // uint32
  msg.header.stamp = ros::Time::now(); // time
  msg.header.frame_id = " ";           // string

  msg.its_header.protocol_version = 0;
  msg.its_header.message_id = 0;
  msg.its_header.station_id = 0;

  msg.station_type.value = 10;

  msg.reference_position.position_confidence.semi_major_confidence = 0;
  msg.reference_position.position_confidence.semi_minor_confidence = 0;
  msg.reference_position.position_confidence.semi_major_orientation = 0;
  msg.reference_position.altitude.value = 0;
  msg.reference_position.altitude.confidence = 0;
  msg.reference_position.latitude = 0;
  msg.reference_position.longitude = 0;

  msg.high_frequency_container.speed.value = 0;
  msg.high_frequency_container.speed.confidence = 0;
  msg.high_frequency_container.drive_direction.value = 0;
  msg.high_frequency_container.vehicle_length.value = 0;
  msg.high_frequency_container.vehicle_length.confidence_indication = 0;
  msg.high_frequency_container.vehicle_width.value = 0;
  msg.high_frequency_container.longitudinal_acceleration.value = 0;
  msg.high_frequency_container.longitudinal_acceleration.confidence = 0;
  msg.high_frequency_container.curvature.value = 0;
  msg.high_frequency_container.curvature.confidence = 0;
  msg.high_frequency_container.curvature_calculation_mode.value = 0;
  msg.high_frequency_container.yaw_rate.value = 0;
  msg.high_frequency_container.yaw_rate.confidence = 0;
  msg.high_frequency_container.acceleration_control.value = 0;
  msg.high_frequency_container.has_acceleration_control = 0;

  msg.low_frequency_container.vehicle_role.value = 0;
  msg.low_frequency_container.exterior_lights.value = 0;
  // msg.low_frequency_container.path_history.points.path_position = 0;
  // msg.low_frequency_container.path_history.points.path_delta_time = 0;
}