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

class StationType {
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
    // Serializes a message object of type StationType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationType
    let len;
    let data = new StationType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/StationType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11f2c0aead214582d10e882ec072ef97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 UNKNOWN = 0
    uint8 PEDESTRIAN = 1
    uint8 CYCLIST = 2
    uint8 MOPED = 3
    uint8 MOTORCYCLE = 4
    uint8 PASSENGER_CAR = 5
    uint8 BUS = 6
    uint8 LIGHT_TRUCK = 7
    uint8 HEAVY_TRUCK = 8
    uint8 TRAILER = 9
    uint8 SPECIAL_VEHICLE = 10
    uint8 TRAM = 11
    uint8 ROAD_SIDE_UNIT = 15
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationType(null);
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
StationType.Constants = {
  UNKNOWN: 0,
  PEDESTRIAN: 1,
  CYCLIST: 2,
  MOPED: 3,
  MOTORCYCLE: 4,
  PASSENGER_CAR: 5,
  BUS: 6,
  LIGHT_TRUCK: 7,
  HEAVY_TRUCK: 8,
  TRAILER: 9,
  SPECIAL_VEHICLE: 10,
  TRAM: 11,
  ROAD_SIDE_UNIT: 15,
}

module.exports = StationType;
