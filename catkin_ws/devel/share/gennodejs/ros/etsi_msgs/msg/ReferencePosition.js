// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let Altitude = require('./Altitude.js');

//-----------------------------------------------------------

class ReferencePosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.position_confidence = null;
      this.altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0;
      }
      if (initObj.hasOwnProperty('position_confidence')) {
        this.position_confidence = initObj.position_confidence
      }
      else {
        this.position_confidence = new PositionConfidenceEllipse();
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = new Altitude();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferencePosition
    // Serialize message field [latitude]
    bufferOffset = _serializer.int64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.int64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [position_confidence]
    bufferOffset = PositionConfidenceEllipse.serialize(obj.position_confidence, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = Altitude.serialize(obj.altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferencePosition
    let len;
    let data = new ReferencePosition(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [position_confidence]
    data.position_confidence = PositionConfidenceEllipse.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = Altitude.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/ReferencePosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3cec6171339bd488bc9f812c2670f12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    PositionConfidenceEllipse position_confidence
    Altitude altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    
    ================================================================================
    MSG: etsi_msgs/PositionConfidenceEllipse
    uint16 semi_major_confidence # cm
    uint16 semi_minor_confidence # cm
    uint16 semi_major_orientation # 0.1 degree
    
    uint16 SEMI_AXIS_LENGTH_OUT_OF_RANGE = 4094
    uint16 SEMI_AXIS_LENGTH_UNAVAILABLE = 4095
    
    ================================================================================
    MSG: etsi_msgs/Altitude
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
    const resolved = new ReferencePosition(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0
    }

    if (msg.position_confidence !== undefined) {
      resolved.position_confidence = PositionConfidenceEllipse.Resolve(msg.position_confidence)
    }
    else {
      resolved.position_confidence = new PositionConfidenceEllipse()
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = Altitude.Resolve(msg.altitude)
    }
    else {
      resolved.altitude = new Altitude()
    }

    return resolved;
    }
};

// Constants for message
ReferencePosition.Constants = {
  LATITUDE_UNAVAILABLE: 900000001,
  LONGITUDE_UNAVAILABLE: 1800000001,
}

module.exports = ReferencePosition;
