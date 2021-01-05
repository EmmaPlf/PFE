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

class RelevanceDistance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelevanceDistance
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelevanceDistance
    let len;
    let data = new RelevanceDistance(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/RelevanceDistance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e56ef7aa4489b7a0e715afdd14b85bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelevanceDistance(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
RelevanceDistance.Constants = {
  LESS_THAN_50M: 0,
  LESS_THAN_100M: 1,
  LESS_THAN_200M: 2,
  LESS_THAN_500M: 3,
  LESS_THAN_1000M: 4,
  LESS_THAN_5KM: 5,
  LESS_THAN_10KM: 6,
  OVER_10KM: 7,
  UNAVAILABLE: 255,
}

module.exports = RelevanceDistance;
