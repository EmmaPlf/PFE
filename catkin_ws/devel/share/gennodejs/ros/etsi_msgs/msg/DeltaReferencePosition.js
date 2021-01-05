// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DeltaReferencePosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.delta_latitude = null;
      this.delta_longitude = null;
      this.delta_altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('delta_latitude')) {
        this.delta_latitude = initObj.delta_latitude
      }
      else {
        this.delta_latitude = 0;
      }
      if (initObj.hasOwnProperty('delta_longitude')) {
        this.delta_longitude = initObj.delta_longitude
      }
      else {
        this.delta_longitude = 0;
      }
      if (initObj.hasOwnProperty('delta_altitude')) {
        this.delta_altitude = initObj.delta_altitude
      }
      else {
        this.delta_altitude = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeltaReferencePosition
    // Serialize message field [delta_latitude]
    bufferOffset = _serializer.int32(obj.delta_latitude, buffer, bufferOffset);
    // Serialize message field [delta_longitude]
    bufferOffset = _serializer.int32(obj.delta_longitude, buffer, bufferOffset);
    // Serialize message field [delta_altitude]
    bufferOffset = _serializer.int16(obj.delta_altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeltaReferencePosition
    let len;
    let data = new DeltaReferencePosition(null);
    // Deserialize message field [delta_latitude]
    data.delta_latitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [delta_longitude]
    data.delta_longitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [delta_altitude]
    data.delta_altitude = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/DeltaReferencePosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b49a8a9b72b511ff5a77cf9b108e1e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeltaReferencePosition(null);
    if (msg.delta_latitude !== undefined) {
      resolved.delta_latitude = msg.delta_latitude;
    }
    else {
      resolved.delta_latitude = 0
    }

    if (msg.delta_longitude !== undefined) {
      resolved.delta_longitude = msg.delta_longitude;
    }
    else {
      resolved.delta_longitude = 0
    }

    if (msg.delta_altitude !== undefined) {
      resolved.delta_altitude = msg.delta_altitude;
    }
    else {
      resolved.delta_altitude = 0
    }

    return resolved;
    }
};

// Constants for message
DeltaReferencePosition.Constants = {
  ONE_MICRODEGREE_NORTH: 10,
  ONE_MICRODEGREE_SOUTH: -10,
  ONE_MICRODEGREE_EAST: 10,
  ONE_MICRODEGREE_WEST: -10,
  ONE_CENTIMETER_UP: 1,
  ONE_CENTIMETER_DOWN: -1,
  LATITUDE_UNAVAILABLE: 131072,
  LONGITUDE_UNAVAILABLE: 131072,
  ALTITUDE_UNAVAILABLE: 12800,
}

module.exports = DeltaReferencePosition;
