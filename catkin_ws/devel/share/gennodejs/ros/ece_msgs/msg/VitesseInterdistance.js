// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Speed = require('./Speed.js');

//-----------------------------------------------------------

class VitesseInterdistance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.interdistance = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Speed();
      }
      if (initObj.hasOwnProperty('interdistance')) {
        this.interdistance = initObj.interdistance
      }
      else {
        this.interdistance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VitesseInterdistance
    // Serialize message field [speed]
    bufferOffset = Speed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [interdistance]
    bufferOffset = _serializer.uint8(obj.interdistance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VitesseInterdistance
    let len;
    let data = new VitesseInterdistance(null);
    // Deserialize message field [speed]
    data.speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [interdistance]
    data.interdistance = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/VitesseInterdistance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd850ec0c0095939e4604e424c6859708';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vitesse : 6 bits
    Speed speed
    
    # Interdistance : 2 bits
    uint8 interdistance
    ================================================================================
    MSG: ece_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VitesseInterdistance(null);
    if (msg.speed !== undefined) {
      resolved.speed = Speed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new Speed()
    }

    if (msg.interdistance !== undefined) {
      resolved.interdistance = msg.interdistance;
    }
    else {
      resolved.interdistance = 0
    }

    return resolved;
    }
};

module.exports = VitesseInterdistance;
