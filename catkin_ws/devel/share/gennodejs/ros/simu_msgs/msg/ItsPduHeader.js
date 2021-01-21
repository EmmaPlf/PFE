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

class ItsPduHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.protocol_version = null;
      this.message_id = null;
      this.station_id = null;
    }
    else {
      if (initObj.hasOwnProperty('protocol_version')) {
        this.protocol_version = initObj.protocol_version
      }
      else {
        this.protocol_version = 0;
      }
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0;
      }
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ItsPduHeader
    // Serialize message field [protocol_version]
    bufferOffset = _serializer.uint8(obj.protocol_version, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint8(obj.message_id, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint32(obj.station_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ItsPduHeader
    let len;
    let data = new ItsPduHeader(null);
    // Deserialize message field [protocol_version]
    data.protocol_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simu_msgs/ItsPduHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '493dd45f242245ef547b44cf2be57f2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 protocol_version
    uint8 message_id
    uint32 station_id
    
    uint8 MESSAGE_ID_DENM = 1
    uint8 MESSAGE_ID_CAM = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ItsPduHeader(null);
    if (msg.protocol_version !== undefined) {
      resolved.protocol_version = msg.protocol_version;
    }
    else {
      resolved.protocol_version = 0
    }

    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0
    }

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    return resolved;
    }
};

// Constants for message
ItsPduHeader.Constants = {
  MESSAGE_ID_DENM: 1,
  MESSAGE_ID_CAM: 2,
}

module.exports = ItsPduHeader;
