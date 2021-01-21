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

class CauseCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cause_code = null;
      this.sub_cause_code = null;
    }
    else {
      if (initObj.hasOwnProperty('cause_code')) {
        this.cause_code = initObj.cause_code
      }
      else {
        this.cause_code = 0;
      }
      if (initObj.hasOwnProperty('sub_cause_code')) {
        this.sub_cause_code = initObj.sub_cause_code
      }
      else {
        this.sub_cause_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CauseCode
    // Serialize message field [cause_code]
    bufferOffset = _serializer.uint8(obj.cause_code, buffer, bufferOffset);
    // Serialize message field [sub_cause_code]
    bufferOffset = _serializer.uint8(obj.sub_cause_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CauseCode
    let len;
    let data = new CauseCode(null);
    // Deserialize message field [cause_code]
    data.cause_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sub_cause_code]
    data.sub_cause_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/CauseCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc8877aef6cd5537c1ab4131c260e325';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cause_code
    uint8 sub_cause_code
    
    uint8 RESERVED = 0
    uint8 TRAFFIC_CONDITION = 1
    uint8 ACCIDENT = 2
    uint8 ROADWORKS = 3
    uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4
    uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9
    uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10
    uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11
    uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12
    uint8 WRONG_WAY_DRIVING = 14
    uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15
    uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17
    uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18
    uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19
    uint8 SLOW_VEHICLE = 26
    uint8 DANGEROUS_END_OF_QUEUE = 27
    uint8 VEHICLE_BREAKDOWN = 91
    uint8 POST_CRASH = 92
    uint8 HUMAN_PROBLEM = 93
    uint8 STATIONARY_VEHICLE = 94
    uint8 EMERGENCY_VEHICLE_APPROACHING = 95
    uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96
    uint8 COLLISION_RISK = 97
    uint8 SIGNAL_VIOLATION = 98
    uint8 DANGEROUS_SITUATION = 99
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CauseCode(null);
    if (msg.cause_code !== undefined) {
      resolved.cause_code = msg.cause_code;
    }
    else {
      resolved.cause_code = 0
    }

    if (msg.sub_cause_code !== undefined) {
      resolved.sub_cause_code = msg.sub_cause_code;
    }
    else {
      resolved.sub_cause_code = 0
    }

    return resolved;
    }
};

// Constants for message
CauseCode.Constants = {
  RESERVED: 0,
  TRAFFIC_CONDITION: 1,
  ACCIDENT: 2,
  ROADWORKS: 3,
  ADVERSE_WEATHER_CONDITIONS_ADHESION: 4,
  HAZARDOUS_LOCATION_SURFACE_CONDITION: 9,
  HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD: 10,
  HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD: 11,
  HUMAN_PRESENCE_ON_THE_ROAD: 12,
  WRONG_WAY_DRIVING: 14,
  RESCUE_AND_RECOVERY_WORK_IN_PROGRESS: 15,
  ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION: 17,
  ADVERSE_WEATHER_CONDITIONS_VISIBILITY: 18,
  ADVERSE_WEATHER_CONDITIONS_PRECIPITATION: 19,
  SLOW_VEHICLE: 26,
  DANGEROUS_END_OF_QUEUE: 27,
  VEHICLE_BREAKDOWN: 91,
  POST_CRASH: 92,
  HUMAN_PROBLEM: 93,
  STATIONARY_VEHICLE: 94,
  EMERGENCY_VEHICLE_APPROACHING: 95,
  HAZARDOUS_LOCATION_DANGEROUS_CURVE: 96,
  COLLISION_RISK: 97,
  SIGNAL_VIOLATION: 98,
  DANGEROUS_SITUATION: 99,
}

module.exports = CauseCode;
