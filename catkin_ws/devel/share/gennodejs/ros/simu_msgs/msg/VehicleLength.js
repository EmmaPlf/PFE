// Auto-generated. Do not edit!

// (in-package simu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleLength {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.confidence_indication = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('confidence_indication')) {
        this.confidence_indication = initObj.confidence_indication
      }
      else {
        this.confidence_indication = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLength
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    // Serialize message field [confidence_indication]
    bufferOffset = _serializer.uint8(obj.confidence_indication, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLength
    let len;
    let data = new VehicleLength(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [confidence_indication]
    data.confidence_indication = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simu_msgs/VehicleLength';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf077d96b456d30e08df07f0d831fe92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 value # 0.1 meter
    uint8 confidence_indication
    
    uint16 VALUE_TEN_CENTIMETERS = 1
    uint16 VALUE_OUT_OF_RANGE = 1022
    uint16 VALUE_UNAVAILABLE = 1023
    
    uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
    uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
    uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLength(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.confidence_indication !== undefined) {
      resolved.confidence_indication = msg.confidence_indication;
    }
    else {
      resolved.confidence_indication = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleLength.Constants = {
  VALUE_TEN_CENTIMETERS: 1,
  VALUE_OUT_OF_RANGE: 1022,
  VALUE_UNAVAILABLE: 1023,
  CONFIDENCE_INDICATION_NO_TRAILER: 0,
  CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH: 1,
  CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH: 2,
  CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE: 3,
  CONFIDENCE_INDICATION_UNAVAILABLE: 4,
}

module.exports = VehicleLength;
