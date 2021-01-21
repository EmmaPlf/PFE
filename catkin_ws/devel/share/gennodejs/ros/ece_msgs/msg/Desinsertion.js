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
let ReferencePosition = require('./ReferencePosition.js');

//-----------------------------------------------------------

class Desinsertion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.demande_sortie = null;
      this.speed = null;
      this.point_sortie = null;
      this.position = null;
      this.confirmation_sortie = null;
    }
    else {
      if (initObj.hasOwnProperty('demande_sortie')) {
        this.demande_sortie = initObj.demande_sortie
      }
      else {
        this.demande_sortie = false;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Speed();
      }
      if (initObj.hasOwnProperty('point_sortie')) {
        this.point_sortie = initObj.point_sortie
      }
      else {
        this.point_sortie = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('confirmation_sortie')) {
        this.confirmation_sortie = initObj.confirmation_sortie
      }
      else {
        this.confirmation_sortie = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Desinsertion
    // Serialize message field [demande_sortie]
    bufferOffset = _serializer.bool(obj.demande_sortie, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = Speed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [point_sortie]
    bufferOffset = ReferencePosition.serialize(obj.point_sortie, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.uint8(obj.position, buffer, bufferOffset);
    // Serialize message field [confirmation_sortie]
    bufferOffset = _serializer.bool(obj.confirmation_sortie, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Desinsertion
    let len;
    let data = new Desinsertion(null);
    // Deserialize message field [demande_sortie]
    data.demande_sortie = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_sortie]
    data.point_sortie = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confirmation_sortie]
    data.confirmation_sortie = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Desinsertion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '289d0b836799889abdfb4fb904e756c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Demande de sortie : 1 octet
    bool demande_sortie
    
    # Vitesse de sortie : 6 bits 
    Speed speed
    
    # Point de sortie : 8 octets
    ReferencePosition point_sortie
    
    # Nouvelle position dans P : 2 bits
    uint8 position
    
    # Confirmation insertion
    bool confirmation_sortie
    
    ================================================================================
    MSG: ece_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
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
    const resolved = new Desinsertion(null);
    if (msg.demande_sortie !== undefined) {
      resolved.demande_sortie = msg.demande_sortie;
    }
    else {
      resolved.demande_sortie = false
    }

    if (msg.speed !== undefined) {
      resolved.speed = Speed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new Speed()
    }

    if (msg.point_sortie !== undefined) {
      resolved.point_sortie = ReferencePosition.Resolve(msg.point_sortie)
    }
    else {
      resolved.point_sortie = new ReferencePosition()
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.confirmation_sortie !== undefined) {
      resolved.confirmation_sortie = msg.confirmation_sortie;
    }
    else {
      resolved.confirmation_sortie = false
    }

    return resolved;
    }
};

module.exports = Desinsertion;
