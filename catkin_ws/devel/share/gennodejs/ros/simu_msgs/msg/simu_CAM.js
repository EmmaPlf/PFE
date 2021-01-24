// Auto-generated. Do not edit!

// (in-package simu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ItsPduHeader = require('./ItsPduHeader.js');
let Speed = require('./Speed.js');
let ReferencePosition = require('./ReferencePosition.js');
let VehicleLength = require('./VehicleLength.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class simu_CAM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.its_header = null;
      this.speed = null;
      this.reference_position = null;
      this.vehicle_length = null;
      this.rank = null;
      this.interdistance = null;
      this.dest = null;
      this.yaw_rate = null;
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
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Speed();
      }
      if (initObj.hasOwnProperty('reference_position')) {
        this.reference_position = initObj.reference_position
      }
      else {
        this.reference_position = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('vehicle_length')) {
        this.vehicle_length = initObj.vehicle_length
      }
      else {
        this.vehicle_length = new VehicleLength();
      }
      if (initObj.hasOwnProperty('rank')) {
        this.rank = initObj.rank
      }
      else {
        this.rank = 0;
      }
      if (initObj.hasOwnProperty('interdistance')) {
        this.interdistance = initObj.interdistance
      }
      else {
        this.interdistance = 0;
      }
      if (initObj.hasOwnProperty('dest')) {
        this.dest = initObj.dest
      }
      else {
        this.dest = 0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simu_CAM
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [its_header]
    bufferOffset = ItsPduHeader.serialize(obj.its_header, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = Speed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [reference_position]
    bufferOffset = ReferencePosition.serialize(obj.reference_position, buffer, bufferOffset);
    // Serialize message field [vehicle_length]
    bufferOffset = VehicleLength.serialize(obj.vehicle_length, buffer, bufferOffset);
    // Serialize message field [rank]
    bufferOffset = _serializer.uint8(obj.rank, buffer, bufferOffset);
    // Serialize message field [interdistance]
    bufferOffset = _serializer.uint32(obj.interdistance, buffer, bufferOffset);
    // Serialize message field [dest]
    bufferOffset = _serializer.uint8(obj.dest, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.int16(obj.yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simu_CAM
    let len;
    let data = new simu_CAM(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [its_header]
    data.its_header = ItsPduHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_position]
    data.reference_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_length]
    data.vehicle_length = VehicleLength.deserialize(buffer, bufferOffset);
    // Deserialize message field [rank]
    data.rank = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [interdistance]
    data.interdistance = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dest]
    data.dest = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simu_msgs/simu_CAM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57b39355d3eb18289ce69aca4d0b91b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    ItsPduHeader its_header
    Speed speed
    ReferencePosition reference_position
    VehicleLength vehicle_length
    uint8 rank
    uint32 interdistance
    uint8 dest
    int16 yaw_rate
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
    MSG: simu_msgs/ItsPduHeader
    uint8 protocol_version
    uint8 message_id
    uint32 station_id
    
    uint8 MESSAGE_ID_DENM = 1
    uint8 MESSAGE_ID_CAM = 2
    
    ================================================================================
    MSG: simu_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: simu_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    PositionConfidenceEllipse position_confidence
    Altitude altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    
    ================================================================================
    MSG: simu_msgs/PositionConfidenceEllipse
    uint16 semi_major_confidence # cm
    uint16 semi_minor_confidence # cm
    uint16 semi_major_orientation # 0.1 degree
    
    uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
    uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095
    
    ================================================================================
    MSG: simu_msgs/Altitude
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
    MSG: simu_msgs/VehicleLength
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simu_CAM(null);
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

    if (msg.speed !== undefined) {
      resolved.speed = Speed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new Speed()
    }

    if (msg.reference_position !== undefined) {
      resolved.reference_position = ReferencePosition.Resolve(msg.reference_position)
    }
    else {
      resolved.reference_position = new ReferencePosition()
    }

    if (msg.vehicle_length !== undefined) {
      resolved.vehicle_length = VehicleLength.Resolve(msg.vehicle_length)
    }
    else {
      resolved.vehicle_length = new VehicleLength()
    }

    if (msg.rank !== undefined) {
      resolved.rank = msg.rank;
    }
    else {
      resolved.rank = 0
    }

    if (msg.interdistance !== undefined) {
      resolved.interdistance = msg.interdistance;
    }
    else {
      resolved.interdistance = 0
    }

    if (msg.dest !== undefined) {
      resolved.dest = msg.dest;
    }
    else {
      resolved.dest = 0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0
    }

    return resolved;
    }
};

module.exports = simu_CAM;
