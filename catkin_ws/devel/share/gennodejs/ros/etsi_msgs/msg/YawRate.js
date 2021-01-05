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

class YawRate {
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
    // Serializes a message object of type YawRate
    // Serialize message field [value]
    bufferOffset = _serializer.int16(obj.value, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.uint8(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YawRate
    let len;
    let data = new YawRate(null);
    // Deserialize message field [value]
    data.value = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/YawRate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dca9682f2a1621772f3f01aff9d9e072';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YawRate(null);
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
YawRate.Constants = {
  VALUE_UNAVAILABLE: 32767,
  CONFIDENCE_0DOT01_DEGSEC: 0,
  CONFIDENCE_0DOT05_DEGSEC: 1,
  CONFIDENCE_0DOT1_DEGSEC: 2,
  CONFIDENCE_1_DEGSEC: 3,
  CONFIDENCE_5_DEGSEC: 4,
  CONFIDENCE_10_DEGSEC: 5,
  CONFIDENCE_100_DEGSEC: 6,
  CONFIDENCE_OUT_OF_RANGE: 7,
  CONFIDENCE_UNAVAILABLE: 8,
}

module.exports = YawRate;
