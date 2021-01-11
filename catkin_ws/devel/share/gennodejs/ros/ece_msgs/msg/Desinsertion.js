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
      this.speed = null;
      this.reference_position = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Speed();
      }
      if (initObj.hasOwnProperty('reference_position')) {
        this.reference_position = initObj.reference_position
      }
      else {
        this.reference_position = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Desinsertion
    // Serialize message field [speed]
    bufferOffset = Speed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [reference_position]
    bufferOffset = ReferencePosition.serialize(obj.reference_position, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.uint8(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Desinsertion
    let len;
    let data = new Desinsertion(null);
    // Deserialize message field [speed]
    data.speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_position]
    data.reference_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Desinsertion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c11695e348cdf58d2655e6625478e1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Demande de sortie : 1 bit
    
    # Vitesse de sortie : 6 bits 
    Speed speed
    
    # Point de sortie : 8 octets
    ReferencePosition reference_position
    
    # Nouvelle position dans P : 2 bits
    uint8 position
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
    const resolved = new Desinsertion(null);
    if (msg.speed !== undefined) {
      resolved.speed = Speed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new Speed()
    }

    if (msg.reference_position !== undefined) {
      resolved.reference_position = ReferencePosition.Resolve(msg.reference_position)
    }
    else {
      resolved.reference_position = new ReferencePosition()
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    return resolved;
    }
};

module.exports = Desinsertion;
