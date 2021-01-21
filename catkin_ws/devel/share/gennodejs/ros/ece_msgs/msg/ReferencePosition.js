// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ReferencePosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferencePosition
    // Serialize message field [latitude]
    bufferOffset = _serializer.int64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.int64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.int32(obj.altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferencePosition
    let len;
    let data = new ReferencePosition(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/ReferencePosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5708c6f048e72dcc331b2c7a9cb6ac7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    int32 altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    int32 ALTITUDE_UNAVAILABLE = 800001
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReferencePosition(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0
    }

    return resolved;
    }
};

// Constants for message
ReferencePosition.Constants = {
  LATITUDE_UNAVAILABLE: 900000001,
  LONGITUDE_UNAVAILABLE: 1800000001,
  ALTITUDE_UNAVAILABLE: 800001,
}

module.exports = ReferencePosition;
