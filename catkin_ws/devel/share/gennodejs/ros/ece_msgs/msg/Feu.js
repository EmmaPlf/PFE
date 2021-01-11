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

class Feu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.permission_feu = null;
    }
    else {
      if (initObj.hasOwnProperty('permission_feu')) {
        this.permission_feu = initObj.permission_feu
      }
      else {
        this.permission_feu = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Feu
    // Serialize message field [permission_feu]
    bufferOffset = _serializer.bool(obj.permission_feu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Feu
    let len;
    let data = new Feu(null);
    // Deserialize message field [permission_feu]
    data.permission_feu = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Feu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffdb5a2e101258db4bee4b8b92ac56a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Permission de passer le feu : 1 bit
    bool permission_feu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Feu(null);
    if (msg.permission_feu !== undefined) {
      resolved.permission_feu = msg.permission_feu;
    }
    else {
      resolved.permission_feu = false
    }

    return resolved;
    }
};

module.exports = Feu;
