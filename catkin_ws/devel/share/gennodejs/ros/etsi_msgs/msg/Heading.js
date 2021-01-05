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

class Heading {
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
    // Serializes a message object of type Heading
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.uint8(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Heading
    let len;
    let data = new Heading(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/Heading';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c491303b4798d5acaf220800ce478c5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Heading(null);
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
Heading.Constants = {
  VALUE_NORTH: 0,
  VALUE_EAST: 900,
  VALUE_SOUTH: 1800,
  VALUE_WEST: 2700,
  VALUE_UNAVAILABLE: 3601,
  CONFIDENCE_ZERO_POINT_ONE_DEGREE: 1,
  CONFIDENCE_ONE_DEGREE: 10,
  CONFIDENCE_OUT_OF_RANGE: 126,
  CONFIDENCE_UNAVAILABLE: 127,
}

module.exports = Heading;
