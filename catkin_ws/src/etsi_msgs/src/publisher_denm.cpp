#include "../../devel/include/etsi_msgs/DENM.h"
#include "ros/ros.h"
#include "sensor_msgs/NavSatFix.h"
#include <iostream>
#include <sstream>

// Paramètres à modifier selon la station
#define STATION_TYPE 5 // PassengerCar
#define STATION_ID 0   // 1 ID par station
#define MSG_ID 1       // DENM
#define FRAME_ID "/denm"
#define PROTOCOL_VERSION 131 // EN 302 637-3 v1.3.1.

typedef struct navSat {
  double lat;
  double lon;
  float alt;

} navSat_t;

typedef struct eventTime {
  uint64_t detect;
  uint64_t ref;
  uint8_t term;
} eventTime_t;

typedef struct situation {
  bool has_situation;
  uint8_t info_qual;
  uint8_t cause;
  uint8_t sub_cause;
  bool linked_cause;
} situation_t;

typedef struct location {
  bool has_location;
  // traces
} location_t;

void navSatCallback(const sensor_msgs::NavSatFix::ConstPtr &navSat,
                    struct navSat *navSat_arg) {

  ROS_INFO("I have received a message odom");
  navSat_arg->lat = navSat->latitude;
  navSat_arg->lon = navSat->longitude;
  navSat_arg->alt = navSat->altitude;
  std::cout << "X_gps[m]:" << navSat->altitude << std::endl;
  std::cout << "Y_gps[m]:" << navSat->longitude << std::endl;
  std::cout << "Z_gps[m]:" << navSat->altitude << std::endl;
}

void denm_data(etsi_msgs::DENM &msg, int count, navSat_t navSat_arg,
               eventTime_t eventTime_arg, situation_t situation_arg,
               location_t location_arg);

int main(int argc, char **argv) {

  etsi_msgs::DENM msg;
  int32_t count = 0;
  navSat_t navSat_arg;
  eventTime_t eventTime_arg;
  situation_t situation_arg;
  location_t location_arg;

  ros::init(argc, argv, "publisher_denm");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe<sensor_msgs::NavSatFix>(
      "fix", 1000, boost::bind(navSatCallback, _1, &navSat_arg));

  ros::Publisher pub = n.advertise<etsi_msgs::DENM>("topic_denm", 1000);
  ros::Rate loop_rate(10);

  while (ros::ok()) {
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    denm_data(msg, count, navSat_arg, eventTime_arg, situation_arg,
              location_arg);
    ++count;
  }

  return 0;
}

void denm_data(etsi_msgs::DENM &msg, int count, navSat_t navSat_arg,
               eventTime_t eventTime_arg, situation_t situation_arg,
               location_t location_arg) {

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
  msg.header.frame_id = FRAME_ID;      // string

  // ItsPduHeader ::= SEQUENCE {protocolVersion INTEGER{currentVersion(1)}
  // (0..255), messageID INTEGER{ denm(1), cam(2), poi(3), spat(4), map(5),
  // ivi(6), ev-rsr(7)} (0..255),
  // stationID StationID }
  msg.its_header.protocol_version = PROTOCOL_VERSION; // uint8_t
  msg.its_header.message_id = MSG_ID;                 // uint8_t
  // StationID ::= INTEGER(0..4294967295)
  msg.its_header.station_id = STATION_ID; // uint32_t

  //////////////////////////////////////////////
  /// MANAGEMENT CONTAINER /////////////////////
  //////////////////////////////////////////////

  // Identifier for an ITS-S. The ITS-S ID may be a pseudonym. It may change
  // over space and/or over time.
  msg.management.action_id.station_id = STATION_ID; // uint32_t
  // Sequence number as unique identifier.
  // A INCREMENTER A CHAQUE NOUVEL EVENT
  msg.management.action_id.sequence_number = 0; // uint16_t

  // Absolute geographical latitude in a WGS84 coordinate system, providing a
  // range of 90 degrees in north or in south hemisphere. Positive values are
  // used for latitude in north of the Equator, negative values are used for
  // latitude in south of the Equator. When the information is unavailable, the
  // value shall be set to 900 000 001. The DE is used in CenDsrcTollingZone DF
  // as defined in clause A.105, ProtectedCommunicationZone DF as defined in
  // clause A.121 and ReferencePositionDF as defined in clause A.124.
  msg.management.event_position.latitude =
      navSat_arg.lat; // 0.1 micro degree int64_t

  // Absolute geographical longitude in a WGS84 co-ordinate system, providing a
  // range of 180 degrees to the east or to the west of the prime meridian.
  // Negative values are used for longitudes to the west, positive values are
  // used for longitudes to the east. When the information is unavailable, the
  // value shall be set to 1 800 000 001. The DE is used in CenDsrcTollingZone
  // DF as defined in clause A.105, ProtectedCommunicationZone DF as defined in
  // clause A.121 and ReferencePositionDF as defined in clause A.124.
  msg.management.event_position.longitude =
      navSat_arg.lon; // 0.1 micro degree int64_t

  // semiMajorConfidence: half of length of the major axis, i.e. distance
  // between the centre point and major axis point of the position accuracy
  // ellipse. It shall be presented as specified in clause A.67 SemiAxisLength,
  msg.management.event_position.position_confidence.semi_major_confidence =
      0; // cm uint16_t

  // semiMinorConfidence: half of length of the minor axis, i.e. distance
  // between the centre point and minor axis point of the position accuracy
  // ellipse. It shall be presented as specified in clause A.67 SemiAxisLength,
  msg.management.event_position.position_confidence.semi_minor_confidence =
      0; // cm uint16_t

  // semiMajorOrientation: orientation direction of the ellipse major axis of
  // the position accuracy ellipse with regards to the WGS84 north. It shall be
  // presented as specified in clause A.35 HeadingValue.
  msg.management.event_position.position_confidence.semi_major_orientation =
      0; // 0.1 degree uint16_t

  // AltitudeValue ::= INTEGER
  // {referenceEllipsoidSurface(0), oneCentimeter(1), unavailable(800001)}
  // (-100000..800001)
  msg.management.event_position.altitude.value =
      navSat_arg.alt; // 0.01 meter int32_t

  // AltitudeConfidence ::= ENUMERATED { alt-000-01 (0), alt-000-02 (1),
  // alt-000-05 (2), alt-000-10 (3), alt-000-20 (4),
  // alt-000-50 (5), alt-001-00 (6), alt-002-00 (7),
  // alt-005-00 (8), alt-010-00 (9), alt-020-00 (10),
  // alt-050-00 (11), alt-100-00 (12), alt-200-00 (13),
  // outOfRange (14), unavailable (15)}
  msg.management.event_position.altitude.confidence = 15; //  uint8_t

  // validity_duration(VALIDITY_DURATION_DEFAULT),
  // transmission_interval(TRANSMISSION_INTERVAL_UNAVAILABLE) {}

  // Time at which the event is detected by the originating ITS-S. For the DENM
  // repetition, this DE shall remain unchanged. For the DENM update, this DE
  // shall be the time at which the event update is detected. For the DENM
  // termination, this DE shall be the time at which the termination of the
  // event is detected.
  msg.management.detection_time = eventTime_arg.detect; // ms uint64_t

  // This DE refers to the time at which a new DENM, an update DENM or a
  // cancellation DENM is generated. This DE is maintained by the DEN basic
  // service of the originating ITS-S.
  msg.management.reference_time = eventTime_arg.ref; // ms since 2004 uint64_t

  // This DE indicates if the type of generated DENM is a cancellation DENM or a
  // negation DENM.  The termination is maintained by the originating ITS-S.
  // termination(TERMINATION_UNAVAILABLE)
  msg.management.termination = eventTime_arg.term; // uint8_t

  // Duration of a traffic event validity
  // msg.management.validity_duration = 0; // seconds uint32_t

  // Time interval between two consecutive message transmissions
  // msg.management.transmission_interval = 0; // milliseconds uint32_t

  // StationType ::= INTEGER {unknown(0), pedestrian(1), cyclist(2), moped(3),
  // motorcycle(4), passengerCar(5), bus(6),  lightTruck(7), heavyTruck(8),
  // trailer(9), specialVehicles(10), tram(11), roadSideUnit(15)} (0..255)
  msg.management.station_type.value = STATION_TYPE; // uint8_t

  /////////////////////////////////////////////////
  ////// SITUATION CONTAINER //////////////////////
  /////////////////////////////////////////////////

  // The situation container includes information that describes the detected
  // event. It shall include at least informationQuality DE and eventType DF,
  // and may include linkedCause DF and eventHistory DF, as follows:
  msg.has_situation = situation_arg.has_situation;

  // Quality level of the information provided by the ITS-S application of the
  // originating ITS-S. It indicates the probability of the detected event being
  // truly existent at the event position.
  // The value ranges from lowest (1) to highest (7).
  // If the information is unknown, the DE shall be set to 0.
  msg.situation.information_quality.value = situation_arg.info_qual; // int8_t

  // eventType: This DF provides a description of the event type being detected.
  // It shall be as defined in clause B.17. For each specific event type, a
  // unique code shall be used. The eventType is composed of two DEs, namely the
  // causeCode and subCauseCode:
  msg.situation.event_type.cause_code = situation_arg.cause; // uint8_t

  /////////////////////////////////////////////
  ///// LOCATION CONTAINER ////////////////////
  /////////////////////////////////////////////

  // The location container describes the location of the detected event. It
  // shall include traces DF and may include eventSpeed, eventPositionHeading,
  // and roadType DE and DFs, as follows:
  msg.has_location = location_arg.has_location;

  // This DF is the location referencing information of eventPosition. It
  // includes a group of traces as defined in clause 6.1.3.2.Each trace
  // describes a set of consecutive PathPoint positions leading to the event
  // position. ITS-Ss located near to or inside this trace path may be concerned
  // by the event. Multiple traces may be defined in case multiple road sections
  // or traffic flows are leading to the event position. In the present
  // standards, up to seven traces may be added in a DENM. For each trace,
  // multiple PathPoint positions are provided to describe the trace path.

  // msg.location.traces[0].points[0].path_position.delta_latitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.location.traces[0].points[0].path_position.delta_longitude =
  //       0; // 0.1 micro degree int32_t
  //   msg.location.traces[0].points[0].path_position.delta_altitude =
  //       0; // centimeter int16_t
}