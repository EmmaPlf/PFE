// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferencePosition = require('./ReferencePosition.js');

//-----------------------------------------------------------

class Insertion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_insertion = null;
      this.confirmation_insertion = null;
    }
    else {
      if (initObj.hasOwnProperty('point_insertion')) {
        this.point_insertion = initObj.point_insertion
      }
      else {
        this.point_insertion = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('confirmation_insertion')) {
        this.confirmation_insertion = initObj.confirmation_insertion
      }
      else {
        this.confirmation_insertion = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Insertion
    // Serialize message field [point_insertion]
    bufferOffset = ReferencePosition.serialize(obj.point_insertion, buffer, bufferOffset);
    // Serialize message field [confirmation_insertion]
    bufferOffset = _serializer.bool(obj.confirmation_insertion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Insertion
    let len;
    let data = new Insertion(null);
    // Deserialize message field [point_insertion]
    data.point_insertion = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [confirmation_insertion]
    data.confirmation_insertion = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Insertion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '445e7910d0486ca2159677b916542c18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Point d'insertion : 8 octet 
    ReferencePosition point_insertion
    
    # Confirmation insertion : 1 octet
    bool confirmation_insertion
    ================================================================================
    MSG: ece_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    int32 altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    int32 ALTITUDE_UNAVAILABLE = 800001
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Insertion(null);
    if (msg.point_insertion !== undefined) {
      resolved.point_insertion = ReferencePosition.Resolve(msg.point_insertion)
    }
    else {
      resolved.point_insertion = new ReferencePosition()
    }

    if (msg.confirmation_insertion !== undefined) {
      resolved.confirmation_insertion = msg.confirmation_insertion;
    }
    else {
      resolved.confirmation_insertion = false
    }

    return resolved;
    }
};

module.exports = Insertion;
