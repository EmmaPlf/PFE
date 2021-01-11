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
      this.reference_position = null;
      this.confirmation_insertion = null;
    }
    else {
      if (initObj.hasOwnProperty('reference_position')) {
        this.reference_position = initObj.reference_position
      }
      else {
        this.reference_position = new ReferencePosition();
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
    // Serialize message field [reference_position]
    bufferOffset = ReferencePosition.serialize(obj.reference_position, buffer, bufferOffset);
    // Serialize message field [confirmation_insertion]
    bufferOffset = _serializer.bool(obj.confirmation_insertion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Insertion
    let len;
    let data = new Insertion(null);
    // Deserialize message field [reference_position]
    data.reference_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [confirmation_insertion]
    data.confirmation_insertion = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Insertion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e657a43fd2874194e72382f85cbab1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Point d'insertion : 8 octet 
    ReferencePosition reference_position
    
    # Confirmation insertion : 1 bits
    bool confirmation_insertion
    ================================================================================
    MSG: ece_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    PositionConfidenceEllipse position_confidence
    Altitude altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    
    ================================================================================
    MSG: ece_msgs/PositionConfidenceEllipse
    uint16 semi_major_confidence # cm
    uint16 semi_minor_confidence # cm
    uint16 semi_major_orientation # 0.1 degree
    
    uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
    uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095
    
    ================================================================================
    MSG: ece_msgs/Altitude
    int32 value # 0.01 meter
    uint8 confidence
    
    int32 VALUE_REFERENCE_ELLIPSOID_SURFACE = 0
    int32 VALUE_ONE_CENTIMETER = 1
    int32 VALUE_UNAVAILABLE = 800001
    
    uint8 CONFIDENCE_1CM = 0
    uint8 CONFIDENCE_2CM = 1
    uint8 CONFIDENCE_5CM = 2
    uint8 CONFIDENCE_10CM = 3
    uint8 CONFIDENCE_20CM = 4
    uint8 CONFIDENCE_50CM = 5
    uint8 CONFIDENCE_1M = 6
    uint8 CONFIDENCE_2M = 7
    uint8 CONFIDENCE_5M = 8
    uint8 CONFIDENCE_10M = 9
    uint8 CONFIDENCE_20M = 10
    uint8 CONFIDENCE_50M = 11
    uint8 CONFIDENCE_100M = 12
    uint8 CONFIDENCE_200M = 13
    uint8 CONFIDENCE_OUT_OF_RANGE = 14
    uint8 CONFIDENCE_UNAVAILABLE = 15
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Insertion(null);
    if (msg.reference_position !== undefined) {
      resolved.reference_position = ReferencePosition.Resolve(msg.reference_position)
    }
    else {
      resolved.reference_position = new ReferencePosition()
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
