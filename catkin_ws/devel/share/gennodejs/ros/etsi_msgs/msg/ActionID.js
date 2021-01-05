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

class ActionID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.station_id = null;
      this.sequence_number = null;
    }
    else {
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
      if (initObj.hasOwnProperty('sequence_number')) {
        this.sequence_number = initObj.sequence_number
      }
      else {
        this.sequence_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionID
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint32(obj.station_id, buffer, bufferOffset);
    // Serialize message field [sequence_number]
    bufferOffset = _serializer.uint16(obj.sequence_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionID
    let len;
    let data = new ActionID(null);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sequence_number]
    data.sequence_number = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/ActionID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11aa5c3558afdafb4f3a2fc76d0b6ed8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 station_id
    uint16 sequence_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionID(null);
    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    if (msg.sequence_number !== undefined) {
      resolved.sequence_number = msg.sequence_number;
    }
    else {
      resolved.sequence_number = 0
    }

    return resolved;
    }
};

module.exports = ActionID;
