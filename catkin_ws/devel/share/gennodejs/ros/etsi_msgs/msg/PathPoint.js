// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DeltaReferencePosition = require('./DeltaReferencePosition.js');
let PathDeltaTime = require('./PathDeltaTime.js');

//-----------------------------------------------------------

class PathPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_position = null;
      this.path_delta_time = null;
    }
    else {
      if (initObj.hasOwnProperty('path_position')) {
        this.path_position = initObj.path_position
      }
      else {
        this.path_position = new DeltaReferencePosition();
      }
      if (initObj.hasOwnProperty('path_delta_time')) {
        this.path_delta_time = initObj.path_delta_time
      }
      else {
        this.path_delta_time = new PathDeltaTime();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPoint
    // Serialize message field [path_position]
    bufferOffset = DeltaReferencePosition.serialize(obj.path_position, buffer, bufferOffset);
    // Serialize message field [path_delta_time]
    bufferOffset = PathDeltaTime.serialize(obj.path_delta_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPoint
    let len;
    let data = new PathPoint(null);
    // Deserialize message field [path_position]
    data.path_position = DeltaReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_delta_time]
    data.path_delta_time = PathDeltaTime.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/PathPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cde4f877b443788c447e4b7ce3042d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PathPoint(null);
    if (msg.path_position !== undefined) {
      resolved.path_position = DeltaReferencePosition.Resolve(msg.path_position)
    }
    else {
      resolved.path_position = new DeltaReferencePosition()
    }

    if (msg.path_delta_time !== undefined) {
      resolved.path_delta_time = PathDeltaTime.Resolve(msg.path_delta_time)
    }
    else {
      resolved.path_delta_time = new PathDeltaTime()
    }

    return resolved;
    }
};

module.exports = PathPoint;
