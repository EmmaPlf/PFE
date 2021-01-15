// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ItsPduHeader = require('./ItsPduHeader.js');
let ManagementContainer = require('./ManagementContainer.js');
let SituationContainer = require('./SituationContainer.js');
let LocationContainer = require('./LocationContainer.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DENM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.its_header = null;
      this.management = null;
      this.has_situation = null;
      this.situation = null;
      this.has_location = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('its_header')) {
        this.its_header = initObj.its_header
      }
      else {
        this.its_header = new ItsPduHeader();
      }
      if (initObj.hasOwnProperty('management')) {
        this.management = initObj.management
      }
      else {
        this.management = new ManagementContainer();
      }
      if (initObj.hasOwnProperty('has_situation')) {
        this.has_situation = initObj.has_situation
      }
      else {
        this.has_situation = false;
      }
      if (initObj.hasOwnProperty('situation')) {
        this.situation = initObj.situation
      }
      else {
        this.situation = new SituationContainer();
      }
      if (initObj.hasOwnProperty('has_location')) {
        this.has_location = initObj.has_location
      }
      else {
        this.has_location = false;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new LocationContainer();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DENM
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [its_header]
    bufferOffset = ItsPduHeader.serialize(obj.its_header, buffer, bufferOffset);
    // Serialize message field [management]
    bufferOffset = ManagementContainer.serialize(obj.management, buffer, bufferOffset);
    // Serialize message field [has_situation]
    bufferOffset = _serializer.bool(obj.has_situation, buffer, bufferOffset);
    // Serialize message field [situation]
    bufferOffset = SituationContainer.serialize(obj.situation, buffer, bufferOffset);
    // Serialize message field [has_location]
    bufferOffset = _serializer.bool(obj.has_location, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = LocationContainer.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DENM
    let len;
    let data = new DENM(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [its_header]
    data.its_header = ItsPduHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [management]
    data.management = ManagementContainer.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_situation]
    data.has_situation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [situation]
    data.situation = SituationContainer.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_location]
    data.has_location = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = LocationContainer.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += SituationContainer.getMessageSize(object.situation);
    length += LocationContainer.getMessageSize(object.location);
    return length + 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/DENM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66d74b1f24152abbfb60e3e0a2c36bfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ItsPduHeader its_header
    
    ManagementContainer management
    
    bool has_situation
    SituationContainer situation
    
    bool has_location
    LocationContainer location
    
    # TODO AlacarteContainer is missing
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: etsi_msgs/ItsPduHeader
    uint8 protocol_version
    uint8 message_id
    uint32 station_id
    
    uint8 MESSAGE_ID_DENM = 1
    uint8 MESSAGE_ID_CAM = 2
    
    ================================================================================
    MSG: etsi_msgs/ManagementContainer
    ActionID action_id
    uint64 detection_time # ms since 2004
    uint64 reference_time # ms since 2004
    uint8 termination
    ReferencePosition event_position
    RelevanceDistance relevance_distance
    RelevanceTrafficDirection relevance_traffic_direction
    uint32 validity_duration # seconds
    uint32 transmission_interval # milliseconds
    StationType station_type
    
    uint8 TERMINATION_CANCELLATION = 0
    uint8 TERMINATION_NEGATION = 1
    uint8 TERMINATION_UNAVAILABLE = 255
    
    uint32 TRANSMISSION_INTERVAL_ONE_MILLISECOND = 1
    uint32 TRANSMISSION_INTERVAL_TEN_SECONDS = 10000
    uint32 TRANSMISSION_INTERVAL_UNAVAILABLE = 0
    
    uint32 VALIDITY_DURATION_DEFAULT = 600
    uint32 VALIDITY_DURATION_TIME_OF_DETECTION = 0
    uint32 VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION = 1
    
    ================================================================================
    MSG: etsi_msgs/ActionID
    uint32 station_id
    uint16 sequence_number
    
    ================================================================================
    MSG: etsi_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    PositionConfidenceEllipse position_confidence
    Altitude altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    
    ================================================================================
    MSG: etsi_msgs/PositionConfidenceEllipse
    uint16 semi_major_confidence # cm
    uint16 semi_minor_confidence # cm
    uint16 semi_major_orientation # 0.1 degree
    
    uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
    uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095
    
    ================================================================================
    MSG: etsi_msgs/Altitude
    int32 value # 0.01 meter
    uint8 confidence
    
    int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0
    int32 VALUE_ONE_CENTIMETER = 1
    int32 VALUE_UNAVAILABLE = 800001
    
    uint8 CONFIDENCE_1CM = 0
    uint8 CONFIDENCE_2CM = 1
    uint8 CONFIDENCE_5CM = 2
    uint8 CONFIDENCE_10CM = 3
    uint8 CONFIDENCE_20CM = 4
    uint8 CONFIDENCE_50CM = 5
    uint8 CONFIDENCE_1M = 6
    uint8 CONFIDENCE_2M = 7
    uint8 CONFIDENCE_5M = 8
    uint8 CONFIDENCE_10M = 9
    uint8 CONFIDENCE_20M = 10
    uint8 CONFIDENCE_50M = 11
    uint8 CONFIDENCE_100M = 12
    uint8 CONFIDENCE_200M = 13
    uint8 CONFIDENCE_OUT_OF_RANGE = 14
    uint8 CONFIDENCE_UNAVAILABLE = 15
    
    ================================================================================
    MSG: etsi_msgs/RelevanceDistance
    uint8 value
    
    uint8 LESS_THAN_50M = 0
    uint8 LESS_THAN_100M = 1
    uint8 LESS_THAN_200M = 2
    uint8 LESS_THAN_500M = 3
    uint8 LESS_THAN_1000M = 4
    uint8 LESS_THAN_5KM = 5
    uint8 LESS_THAN_10KM = 6
    uint8 OVER_10KM = 7
    uint8 UNAVAILABLE = 255
    
    ================================================================================
    MSG: etsi_msgs/RelevanceTrafficDirection
    uint8 value
    
    uint8 ALL_TRAFFIC_DIRECTIONS = 0
    uint8 UPSTREAM_TRAFFIC = 1
    uint8 DOWNSTREAM_TRAFFIC = 2
    uint8 OPPOSITE_TRAFFIC = 3
    uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions
    
    ================================================================================
    MSG: etsi_msgs/StationType
    uint8 value
    
    uint8 UNKNOWN = 0
    uint8 PEDESTRIAN = 1
    uint8 CYCLIST = 2
    uint8 MOPED = 3
    uint8 MOTORCYCLE = 4
    uint8 PASSENGER_CAR = 5
    uint8 BUS = 6
    uint8 LIGHT_TRUCK = 7
    uint8 HEAVY_TRUCK = 8
    uint8 TRAILER = 9
    uint8 SPECIAL_VEHICLE = 10
    uint8 TRAM = 11
    uint8 ROAD_SIDE_UNIT = 15
    
    ================================================================================
    MSG: etsi_msgs/SituationContainer
    InformationQuality information_quality
    CauseCode event_type
    bool has_linked_cause
    CauseCode linked_cause
    EventPoint[] event_history
    
    ================================================================================
    MSG: etsi_msgs/InformationQuality
    int8 value
    
    int8 UNAVAILABLE = 0
    int8 LOWEST = 1
    int8 HIGHEST = 7
    
    ================================================================================
    MSG: etsi_msgs/CauseCode
    uint8 cause_code
    uint8 sub_cause_code
    
    uint8 RESERVED = 0
    uint8 TRAFFIC_CONDITION = 1
    uint8 ACCIDENT = 2
    uint8 ROADWORKS = 3
    uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4
    uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9
    uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10
    uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11
    uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12
    uint8 WRONG_WAY_DRIVING = 14
    uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15
    uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17
    uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18
    uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19
    uint8 SLOW_VEHICLE = 26
    uint8 DANGEROUS_END_OF_QUEUE = 27
    uint8 VEHICLE_BREAKDOWN = 91
    uint8 POST_CRASH = 92
    uint8 HUMAN_PROBLEM = 93
    uint8 STATIONARY_VEHICLE = 94
    uint8 EMERGENCY_VEHICLE_APPROACHING = 95
    uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96
    uint8 COLLISION_RISK = 97
    uint8 SIGNAL_VIOLATION = 98
    uint8 DANGEROUS_SITUATION = 99
    
    ================================================================================
    MSG: etsi_msgs/EventPoint
    DeltaReferencePosition event_position
    PathDeltaTime event_delta_time
    InformationQuality information_quality
    
    ================================================================================
    MSG: etsi_msgs/DeltaReferencePosition
    int32 delta_latitude # 0.1 micro degree
    int32 delta_longitude # 0.1 micro degree
    int16 delta_altitude # centimeter
    
    int32 ONE_MICRODEGREE_NORTH = 10
    int32 ONE_MICRODEGREE_SOUTH = -10
    int32 ONE_MICRODEGREE_EAST = 10
    int32 ONE_MICRODEGREE_WEST = -10
    int32 ONE_CENTIMETER_UP = 1
    int32 ONE_CENTIMETER_DOWN = -1
    int32 LATITUDE_UNAVAILABLE = 131072
    int32 LONGITUDE_UNAVAILABLE = 131072
    int16 ALTITUDE_UNAVAILABLE = 12800
    
    ================================================================================
    MSG: etsi_msgs/PathDeltaTime
    uint16 value # 10 ms
    
    uint16 UNAVAILABLE = 0
    uint16 TEN_MILLISECONDS_IN_PAST = 1
    
    ================================================================================
    MSG: etsi_msgs/LocationContainer
    Speed event_speed
    Heading event_position_heading
    PathHistory[] traces
    uint8 road_type
    
    uint8 ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 0
    uint8 ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 1
    uint8 ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 2
    uint8 ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 3
    uint8 ROAD_TYPE_UNAVAILABLE = 255
    
    ================================================================================
    MSG: etsi_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/Heading
    uint16 value # 0.1 degree
    uint8 confidence
    
    uint16 VALUE_NORTH = 0
    uint16 VALUE_EAST = 900
    uint16 VALUE_SOUTH = 1800
    uint16 VALUE_WEST = 2700
    uint16 VALUE_UNAVAILABLE = 3601
    
    uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1
    uint8 CONFIDENCE_ONE_DEGREE = 10
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/PathHistory
    PathPoint[] points
    
    ================================================================================
    MSG: etsi_msgs/PathPoint
    DeltaReferencePosition path_position
    PathDeltaTime path_delta_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DENM(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.its_header !== undefined) {
      resolved.its_header = ItsPduHeader.Resolve(msg.its_header)
    }
    else {
      resolved.its_header = new ItsPduHeader()
    }

    if (msg.management !== undefined) {
      resolved.management = ManagementContainer.Resolve(msg.management)
    }
    else {
      resolved.management = new ManagementContainer()
    }

    if (msg.has_situation !== undefined) {
      resolved.has_situation = msg.has_situation;
    }
    else {
      resolved.has_situation = false
    }

    if (msg.situation !== undefined) {
      resolved.situation = SituationContainer.Resolve(msg.situation)
    }
    else {
      resolved.situation = new SituationContainer()
    }

    if (msg.has_location !== undefined) {
      resolved.has_location = msg.has_location;
    }
    else {
      resolved.has_location = false
    }

    if (msg.location !== undefined) {
      resolved.location = LocationContainer.Resolve(msg.location)
    }
    else {
      resolved.location = new LocationContainer()
    }

    return resolved;
    }
};

module.exports = DENM;
