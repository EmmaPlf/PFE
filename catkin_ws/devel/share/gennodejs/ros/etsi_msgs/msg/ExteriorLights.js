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

class ExteriorLights {
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
    // Serializes a message object of type ExteriorLights
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExteriorLights
    let len;
    let data = new ExteriorLights(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/ExteriorLights';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '345ae8f2de1fe5f50829808e9f147b8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 LOW_BEAM_HEADLIGHTS = 1
    uint8 HIGH_BEAM_HEADLIGHTS = 2
    uint8 LEFT_TURN_SIGNAL = 4
    uint8 RIGHT_TURN_SIGNAL = 8
    uint8 DAYTIME_RUNNING_LIGHTS = 16
    uint8 REVERSE_LIGHT = 32
    uint8 FOG_LIGHT = 64
    uint8 PARKING_LIGHTS = 128
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExteriorLights(null);
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
ExteriorLights.Constants = {
  LOW_BEAM_HEADLIGHTS: 1,
  HIGH_BEAM_HEADLIGHTS: 2,
  LEFT_TURN_SIGNAL: 4,
  RIGHT_TURN_SIGNAL: 8,
  DAYTIME_RUNNING_LIGHTS: 16,
  REVERSE_LIGHT: 32,
  FOG_LIGHT: 64,
  PARKING_LIGHTS: 128,
}

module.exports = ExteriorLights;
