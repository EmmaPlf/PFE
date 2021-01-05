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

class VehicleRole {
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
    // Serializes a message object of type VehicleRole
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleRole
    let len;
    let data = new VehicleRole(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/VehicleRole';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6cea9b95e10cef110efe27272e9c052';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 DEFAULT = 0
    uint8 PUBLIC_TRANSPORT = 1
    uint8 SPECIAL_TRANSPORT = 2
    uint8 DANGEROUS_GOODS = 3
    uint8 ROAD_WORK = 4
    uint8 RESCUE = 5
    uint8 EMERGENCY = 6
    uint8 SAFETY_CAR = 7
    uint8 AGRICULTURE = 8
    uint8 COMMERCIAL = 9
    uint8 MILITARY = 10
    uint8 ROAD_OPERATOR = 11
    uint8 TAXI = 12
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleRole(null);
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
VehicleRole.Constants = {
  DEFAULT: 0,
  PUBLIC_TRANSPORT: 1,
  SPECIAL_TRANSPORT: 2,
  DANGEROUS_GOODS: 3,
  ROAD_WORK: 4,
  RESCUE: 5,
  EMERGENCY: 6,
  SAFETY_CAR: 7,
  AGRICULTURE: 8,
  COMMERCIAL: 9,
  MILITARY: 10,
  ROAD_OPERATOR: 11,
  TAXI: 12,
}

module.exports = VehicleRole;
