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

class Altitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Altitude
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.uint8(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Altitude
    let len;
    let data = new Altitude(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Altitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '968c3c0b85fd51b834ff2ab741786e5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Altitude(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    return resolved;
    }
};

// Constants for message
Altitude.Constants = {
  VALUE_REFERENCE_ELLIPSOID_SURFACE: 0,
  VALUE_ONE_CENTIMETER: 1,
  VALUE_UNAVAILABLE: 800001,
  CONFIDENCE_1CM: 0,
  CONFIDENCE_2CM: 1,
  CONFIDENCE_5CM: 2,
  CONFIDENCE_10CM: 3,
  CONFIDENCE_20CM: 4,
  CONFIDENCE_50CM: 5,
  CONFIDENCE_1M: 6,
  CONFIDENCE_2M: 7,
  CONFIDENCE_5M: 8,
  CONFIDENCE_10M: 9,
  CONFIDENCE_20M: 10,
  CONFIDENCE_50M: 11,
  CONFIDENCE_100M: 12,
  CONFIDENCE_200M: 13,
  CONFIDENCE_OUT_OF_RANGE: 14,
  CONFIDENCE_UNAVAILABLE: 15,
}

module.exports = Altitude;
