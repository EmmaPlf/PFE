#include "ros/ros.h"
#include "messages_denm/DENM.h"
#include <sstream>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher_denm");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<messages_denm::DENM>("topic_denm", 1000);
    ros::Rate loop_rate(10);

    messages_denm::DENM DENM;

    DENM.header.value = 0; // 0.1 degree uint16_t 
    DENM.header.confidence = 0; // uint8_t 

    DENM.its_header.protocol_version = 0; // uint8_t
    DENM.its_header.message_id = 0; // uint8_t
    DENM.its_header.station_id = 0; // uint32_t

    DENM.management.action_id.station_id = 0; // uint32_t
    DENM.management.action_id.sequence_number = 0; // uint16_t
    DENM.management.detection_time = 0; // ms since 2004 uint64_t
    DENM.management.reference_time = 0; // ms since 2004 uint64_t
    DENM.management.termination = 0; // uint8_t
    DENM.management.event_position.latitude = 0; // 0.1 micro degree int64_t
    DENM.management.event_position.longitude = 0; // 0.1 micro degree int64_t
    DENM.management.event_position.position_confidence.semi_major_confidence = 0; // cm uint16_t
    DENM.management.event_position.position_confidence.semi_minor_confidence = 0; // cm uint16_t
    DENM.management.event_position.position_confidence.semi_major_orientation = 0; // 0.1 degree uint16_t
    DENM.management.event_position.altitude.value = 0; // 0.01 meter int32_t
    DENM.management.event_position.altitude.confidence = 0; //  uint8_t 
    DENM.management.relevance_distance.value = 0; // uint8_t 
    DENM.management.relevance_traffic_direction.value = 0; // int8_t
    DENM.management.validity_duration = 0; // seconds uint32_t
    DENM.management.transmission_interval = 0; // milliseconds uint32_t
    DENM.management.station_type.value = 0; // uint8_t

    DENM.has_situation = false;

    DENM.situation.information_quality.value = 0; // int8_t
    DENM.situation.event_type.cause_code = 0; // uint8_t
    DENM.situation.event_type.sub_cause_code = 0; // uint8_t
    DENM.situation.has_linked_cause = false;
    DENM.situation.linked_cause.cause_code = 0; // uint8_t
    DENM.siuation.linked_cause.sub_cause_code = 0; // uint8_t
    DENM.situation.event_history[0].event_position.delta_latitude = 0; // 0.1 micro degree int32_t
    DENM.situation.event_history[0].event_position.delta_longitude = 0; // 0.1 micro degree int32_t
    DENM.situation.event_history[0].event_position.delta_altitude = 0; // centimeter int16_t
    DENM.situation.event_history[0].event_delta_time.value = 0; // 10 ms uint16_t
    DENM.situation.event_history[0].information_quality.value = 0; // int8_t

    DENM.has_location = false;

    DENM.location.event_speed.value = 0; // 0.01 m/s uint16_t
    DENM.location.event_speed.confidence = 0; // 0.01 m/s uint8_t
    DENM.location.event_position_heading.value = 0; // 0.1 degree uint16_t
    DENM.location.event_position_heading.confidence = 0; // uint8_t
    DENM.location.traces[0].points[0].path_position.delta_latitude = 0; // 0.1 micro degree int32_t
    DENM.location.traces[0].points[0].path_position.delta_longitude = 0; // 0.1 micro degree int32_t 
    DENM.location.traces[0].points[0].path_position.delta_altitude = 0; // centimeter int16_t
    DENM.location.traces[0].points[0].path_delta_time.value = 0; // 10 ms uint16_t
    DENM.location.road_type = 0; // uint8_t

    while (ros::ok())
    {
        pub.publish(DENM);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}