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
let StationType = require('./StationType.js');
let ReferencePosition = require('./ReferencePosition.js');
let BasicVehicleContainerHighFrequency = require('./BasicVehicleContainerHighFrequency.js');
let BasicVehicleContainerLowFrequency = require('./BasicVehicleContainerLowFrequency.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CAM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.its_header = null;
      this.generation_delta_time = null;
      this.station_type = null;
      this.reference_position = null;
      this.high_frequency_container = null;
      this.has_low_frequency_container = null;
      this.low_frequency_container = null;
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
      if (initObj.hasOwnProperty('generation_delta_time')) {
        this.generation_delta_time = initObj.generation_delta_time
      }
      else {
        this.generation_delta_time = 0;
      }
      if (initObj.hasOwnProperty('station_type')) {
        this.station_type = initObj.station_type
      }
      else {
        this.station_type = new StationType();
      }
      if (initObj.hasOwnProperty('reference_position')) {
        this.reference_position = initObj.reference_position
      }
      else {
        this.reference_position = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('high_frequency_container')) {
        this.high_frequency_container = initObj.high_frequency_container
      }
      else {
        this.high_frequency_container = new BasicVehicleContainerHighFrequency();
      }
      if (initObj.hasOwnProperty('has_low_frequency_container')) {
        this.has_low_frequency_container = initObj.has_low_frequency_container
      }
      else {
        this.has_low_frequency_container = false;
      }
      if (initObj.hasOwnProperty('low_frequency_container')) {
        this.low_frequency_container = initObj.low_frequency_container
      }
      else {
        this.low_frequency_container = new BasicVehicleContainerLowFrequency();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CAM
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [its_header]
    bufferOffset = ItsPduHeader.serialize(obj.its_header, buffer, bufferOffset);
    // Serialize message field [generation_delta_time]
    bufferOffset = _serializer.uint16(obj.generation_delta_time, buffer, bufferOffset);
    // Serialize message field [station_type]
    bufferOffset = StationType.serialize(obj.station_type, buffer, bufferOffset);
    // Serialize message field [reference_position]
    bufferOffset = ReferencePosition.serialize(obj.reference_position, buffer, bufferOffset);
    // Serialize message field [high_frequency_container]
    bufferOffset = BasicVehicleContainerHighFrequency.serialize(obj.high_frequency_container, buffer, bufferOffset);
    // Serialize message field [has_low_frequency_container]
    bufferOffset = _serializer.bool(obj.has_low_frequency_container, buffer, bufferOffset);
    // Serialize message field [low_frequency_container]
    bufferOffset = BasicVehicleContainerLowFrequency.serialize(obj.low_frequency_container, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CAM
    let len;
    let data = new CAM(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [its_header]
    data.its_header = ItsPduHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [generation_delta_time]
    data.generation_delta_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [station_type]
    data.station_type = StationType.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_position]
    data.reference_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [high_frequency_container]
    data.high_frequency_container = BasicVehicleContainerHighFrequency.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_low_frequency_container]
    data.has_low_frequency_container = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [low_frequency_container]
    data.low_frequency_container = BasicVehicleContainerLowFrequency.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += BasicVehicleContainerLowFrequency.getMessageSize(object.low_frequency_container);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/CAM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c2e1d050ad79cf1fc0a55266577e7c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ItsPduHeader its_header
    uint16 generation_delta_time # milliseconds since 2004 modulo 2^16
    
    # basic container
    StationType station_type
    ReferencePosition reference_position
    
    # TODO either BasicVehicle or RSU
    BasicVehicleContainerHighFrequency high_frequency_container
    
    bool has_low_frequency_container
    BasicVehicleContainerLowFrequency low_frequency_container
    
    # TODO special vehicle container is missing
    
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
    MSG: etsi_msgs/BasicVehicleContainerHighFrequency
    Heading heading
    Speed speed
    DriveDirection drive_direction
    VehicleLength vehicle_length
    VehicleWidth vehicle_width
    LongitudinalAcceleration longitudinal_acceleration
    Curvature curvature
    CurvatureCalculationMode curvature_calculation_mode
    YawRate yaw_rate
    
    # optional data fields
    bool has_acceleration_control
    AccelerationControl acceleration_control
    
    # TODO further (optional) data fields are missing
    
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
    MSG: etsi_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/DriveDirection
    uint8 value
    
    uint8 FORWARD = 0
    uint8 BACKWARD = 1
    uint8 UNAVAILABLE = 2
    
    ================================================================================
    MSG: etsi_msgs/VehicleLength
    uint16 value # 0.1 meter
    uint8 confidence_indication
    
    uint16 VALUE_TEN_CENTIMETERS = 1
    uint16 VALUE_OUT_OF_RANGE = 1022
    uint16 VALUE_UNAVAILABLE = 1023
    
    uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
    uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
    uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4
    
    ================================================================================
    MSG: etsi_msgs/VehicleWidth
    uint8 value # 0.1 meter
    
    uint8 TEN_CENTIMETERS = 1
    uint8 OUT_OF_RANGE = 61
    uint8 UNAVAILABLE = 62
    
    ================================================================================
    MSG: etsi_msgs/LongitudinalAcceleration
    int16 value # 0.1 m/s^2
    uint8 confidence # 0.1 m/s^2
    
    int16 VALUE_UNAVAILABLE = 161
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 101
    uint8 CONFIDENCE_UNAVAILABLE = 102
    
    ================================================================================
    MSG: etsi_msgs/Curvature
    int16 value # m^-1
    uint8 confidence
    
    int16 VALUE_RIGHTMOST = -1023
    int16 VALUE_LEFTMOST = 1022
    int16 VALUE_MIN = -1023
    int16 VALUE_MAX = 1022
    int16 VALUE_STRAIGHT = 0
    int16 VALUE_UNAVAILABLE = 1023
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 6
    uint8 CONFIDENCE_UNAVAILABLE = 7
    
    ================================================================================
    MSG: etsi_msgs/CurvatureCalculationMode
    uint8 value
    
    uint8 YAW_RATE_USED = 0
    uint8 YAW_RATE_NOT_USED = 1
    uint8 UNAVAILABLE = 2
    
    ================================================================================
    MSG: etsi_msgs/YawRate
    int16 value # 0.01 degree/s
    uint8 confidence
    
    int16 VALUE_UNAVAILABLE = 32767
    
    uint8 CONFIDENCE_0DOT01_DEGSEC = 0
    uint8 CONFIDENCE_0DOT05_DEGSEC = 1
    uint8 CONFIDENCE_0DOT1_DEGSEC = 2
    uint8 CONFIDENCE_1_DEGSEC = 3
    uint8 CONFIDENCE_5_DEGSEC = 4
    uint8 CONFIDENCE_10_DEGSEC = 5
    uint8 CONFIDENCE_100_DEGSEC = 6
    uint8 CONFIDENCE_OUT_OF_RANGE = 7
    uint8 CONFIDENCE_UNAVAILABLE = 8
    
    ================================================================================
    MSG: etsi_msgs/AccelerationControl
    uint8 value
    
    uint8 BRAKE_PEDAL_ENGAGED = 1
    uint8 GAS_PEDAL_ENGAGED = 2
    uint8 EMERGENCY_BRAKE_ENGAGED = 4
    uint8 COLLISION_WARNING_ENGAGED = 8
    uint8 ACC_ENGAGED = 16
    uint8 CRUISE_CONTROL_ENGAGED = 32
    uint8 SPEED_LIMITER_ENGAGED = 64
    
    ================================================================================
    MSG: etsi_msgs/BasicVehicleContainerLowFrequency
    VehicleRole vehicle_role
    ExteriorLights exterior_lights
    PathHistory path_history
    
    ================================================================================
    MSG: etsi_msgs/VehicleRole
    uint8 value
    
    uint8 DEFAULT = 0
    uint8 PUBLIC_TRANSPORT = 1
    uint8 SPECIAL_TRANSPORT = 2
    uint8 DANGEROUS_GOODS = 3
    uint8 ROAD_WORK = 4
    uint8 RESCUE = 5
    uint8 EMERGENCY = 6
    uint8 SAFETY_CAR = 7
    uint8 AGRICULTURE = 8
    uint8 COMMERCIAL = 9
    uint8 MILITARY = 10
    uint8 ROAD_OPERATOR = 11
    uint8 TAXI = 12
    
    ================================================================================
    MSG: etsi_msgs/ExteriorLights
    uint8 value
    
    uint8 LOW_BEAM_HEADLIGHTS = 1
    uint8 HIGH_BEAM_HEADLIGHTS = 2
    uint8 LEFT_TURN_SIGNAL = 4
    uint8 RIGHT_TURN_SIGNAL = 8
    uint8 DAYTIME_RUNNING_LIGHTS = 16
    uint8 REVERSE_LIGHT = 32
    uint8 FOG_LIGHT = 64
    uint8 PARKING_LIGHTS = 128
    
    ================================================================================
    MSG: etsi_msgs/PathHistory
    PathPoint[] points
    
    ================================================================================
    MSG: etsi_msgs/PathPoint
    DeltaReferencePosition path_position
    PathDeltaTime path_delta_time
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CAM(null);
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

    if (msg.generation_delta_time !== undefined) {
      resolved.generation_delta_time = msg.generation_delta_time;
    }
    else {
      resolved.generation_delta_time = 0
    }

    if (msg.station_type !== undefined) {
      resolved.station_type = StationType.Resolve(msg.station_type)
    }
    else {
      resolved.station_type = new StationType()
    }

    if (msg.reference_position !== undefined) {
      resolved.reference_position = ReferencePosition.Resolve(msg.reference_position)
    }
    else {
      resolved.reference_position = new ReferencePosition()
    }

    if (msg.high_frequency_container !== undefined) {
      resolved.high_frequency_container = BasicVehicleContainerHighFrequency.Resolve(msg.high_frequency_container)
    }
    else {
      resolved.high_frequency_container = new BasicVehicleContainerHighFrequency()
    }

    if (msg.has_low_frequency_container !== undefined) {
      resolved.has_low_frequency_container = msg.has_low_frequency_container;
    }
    else {
      resolved.has_low_frequency_container = false
    }

    if (msg.low_frequency_container !== undefined) {
      resolved.low_frequency_container = BasicVehicleContainerLowFrequency.Resolve(msg.low_frequency_container)
    }
    else {
      resolved.low_frequency_container = new BasicVehicleContainerLowFrequency()
    }

    return resolved;
    }
};

module.exports = CAM;
