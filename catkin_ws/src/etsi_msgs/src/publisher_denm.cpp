#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"
#include <sstream>

void fill_data(etsi_msgs::DENM &msg, int count);

int main(int argc, char **argv) {

  ros::init(argc, argv, "publisher_denm");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<etsi_msgs::DENM>("topic_denm", 1000);
  ros::Rate loop_rate(10);

  etsi_msgs::DENM msg;
  int count = 0;

  while (ros::ok()) {
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    fill_data(msg, count);
    ++count;
  }

  return 0;
}

void fill_data(etsi_msgs::DENM &msg, int count) {

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

  msg.its_header.protocol_version = 0; // uint8_t
  msg.its_header.message_id = 0;       // uint8_t
  msg.its_header.station_id = 0;       // uint32_t

  msg.management.action_id.station_id = 0;      // uint32_t
  msg.management.action_id.sequence_number = 0; // uint16_t
  msg.management.detection_time = 0;            // ms since 2004 uint64_t
  msg.management.reference_time = 0;            // ms since 2004 uint64_t
  msg.management.termination = 0;               // uint8_t
  msg.management.event_position.latitude = 0;   // 0.1 micro degree int64_t
  msg.management.event_position.longitude = 0;  // 0.1 micro degree int64_t
  msg.management.event_position.position_confidence.semi_major_confidence =
      0; // cm uint16_t
  msg.management.event_position.position_confidence.semi_minor_confidence =
      0; // cm uint16_t
  msg.management.event_position.position_confidence.semi_major_orientation =
      0;                                                 // 0.1 degree uint16_t
  msg.management.event_position.altitude.value = 0;      // 0.01 meter int32_t
  msg.management.event_position.altitude.confidence = 0; //  uint8_t
  msg.management.relevance_distance.value = 0;           // uint8_t
  msg.management.relevance_traffic_direction.value = 0;  // int8_t
  msg.management.validity_duration = 0;                  // seconds uint32_t
  msg.management.transmission_interval = 0; // milliseconds uint32_t
  msg.management.station_type.value = 0;    // uint8_t

  msg.has_situation = false;

  msg.situation.information_quality.value = 0; // int8_t
  msg.situation.event_type.cause_code = 0;     // uint8_t
  msg.situation.event_type.sub_cause_code = 0; // uint8_t
  msg.situation.has_linked_cause = false;
  msg.situation.linked_cause.cause_code = 0;     // uint8_t
  msg.situation.linked_cause.sub_cause_code = 0; // uint8_t
  //   msg.situation.event_history[0].event_position.delta_latitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.situation.event_history[0].event_position.delta_longitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.situation.event_history[0].event_position.delta_altitude =
  //       0; // centimeter int16_t
  //   msg.situation.event_history[0].event_delta_time.value = 0; // 10 ms
  //   uint16_t msg.situation.event_history[0].information_quality.value = 0;
  //   // int8_t

  msg.has_location = false;

  msg.location.event_speed.value = 0;                 // 0.01 m/s uint16_t
  msg.location.event_speed.confidence = 0;            // 0.01 m/s uint8_t
  msg.location.event_position_heading.value = 0;      // 0.1 degree uint16_t
  msg.location.event_position_heading.confidence = 0; // uint8_t
  //   msg.location.traces[0].points[0].path_position.delta_latitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.location.traces[0].points[0].path_position.delta_longitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.location.traces[0].points[0].path_position.delta_altitude =
  //       0; // centimeter int16_t
  //   msg.location.traces[0].points[0].path_delta_time.value = 0; // 10 ms
  //   uint16_t
  msg.location.road_type = 0; // uint8_t
}