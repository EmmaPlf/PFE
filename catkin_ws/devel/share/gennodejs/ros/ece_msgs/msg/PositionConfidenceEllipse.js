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

class PositionConfidenceEllipse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.semi_major_confidence = null;
      this.semi_minor_confidence = null;
      this.semi_major_orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('semi_major_confidence')) {
        this.semi_major_confidence = initObj.semi_major_confidence
      }
      else {
        this.semi_major_confidence = 0;
      }
      if (initObj.hasOwnProperty('semi_minor_confidence')) {
        this.semi_minor_confidence = initObj.semi_minor_confidence
      }
      else {
        this.semi_minor_confidence = 0;
      }
      if (initObj.hasOwnProperty('semi_major_orientation')) {
        this.semi_major_orientation = initObj.semi_major_orientation
      }
      else {
        this.semi_major_orientation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionConfidenceEllipse
    // Serialize message field [semi_major_confidence]
    bufferOffset = _serializer.uint16(obj.semi_major_confidence, buffer, bufferOffset);
    // Serialize message field [semi_minor_confidence]
    bufferOffset = _serializer.uint16(obj.semi_minor_confidence, buffer, bufferOffset);
    // Serialize message field [semi_major_orientation]
    bufferOffset = _serializer.uint16(obj.semi_major_orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionConfidenceEllipse
    let len;
    let data = new PositionConfidenceEllipse(null);
    // Deserialize message field [semi_major_confidence]
    data.semi_major_confidence = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [semi_minor_confidence]
    data.semi_minor_confidence = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [semi_major_orientation]
    data.semi_major_orientation = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/PositionConfidenceEllipse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c20c3376bfa1f7fa4fce4f692844e203';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 semi_major_confidence # cm
    uint16 semi_minor_confidence # cm
    uint16 semi_major_orientation # 0.1 degree
    
    uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
    uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionConfidenceEllipse(null);
    if (msg.semi_major_confidence !== undefined) {
      resolved.semi_major_confidence = msg.semi_major_confidence;
    }
    else {
      resolved.semi_major_confidence = 0
    }

    if (msg.semi_minor_confidence !== undefined) {
      resolved.semi_minor_confidence = msg.semi_minor_confidence;
    }
    else {
      resolved.semi_minor_confidence = 0
    }

    if (msg.semi_major_orientation !== undefined) {
      resolved.semi_major_orientation = msg.semi_major_orientation;
    }
    else {
      resolved.semi_major_orientation = 0
    }

    return resolved;
    }
};

// Constants for message
PositionConfidenceEllipse.Constants = {
  SEMI_AXIS_LENGTH_OUT_OF_RANGE: 4094,
  SEMI_AXIS_LENGTH_UNAVAILABLE: 4095,
}

module.exports = PositionConfidenceEllipse;
