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

class RelevanceTrafficDirection {
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
    // Serializes a message object of type RelevanceTrafficDirection
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelevanceTrafficDirection
    let len;
    let data = new RelevanceTrafficDirection(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/RelevanceTrafficDirection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77aec5a7651c0ef00896308be8f8300e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 ALL_TRAFFIC_DIRECTIONS = 0
    uint8 UPSTREAM_TRAFFIC = 1
    uint8 DOWNSTREAM_TRAFFIC = 2
    uint8 OPPOSITE_TRAFFIC = 3
    uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelevanceTrafficDirection(null);
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
RelevanceTrafficDirection.Constants = {
  ALL_TRAFFIC_DIRECTIONS: 0,
  UPSTREAM_TRAFFIC: 1,
  DOWNSTREAM_TRAFFIC: 2,
  OPPOSITE_TRAFFIC: 3,
  UNAVAILABLE: 255,
}

module.exports = RelevanceTrafficDirection;
