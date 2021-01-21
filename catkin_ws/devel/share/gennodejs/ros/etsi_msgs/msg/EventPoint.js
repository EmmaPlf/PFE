// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DeltaReferencePosition = require('./DeltaReferencePosition.js');
let PathDeltaTime = require('./PathDeltaTime.js');
let InformationQuality = require('./InformationQuality.js');

//-----------------------------------------------------------

class EventPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event_position = null;
      this.event_delta_time = null;
      this.information_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('event_position')) {
        this.event_position = initObj.event_position
      }
      else {
        this.event_position = new DeltaReferencePosition();
      }
      if (initObj.hasOwnProperty('event_delta_time')) {
        this.event_delta_time = initObj.event_delta_time
      }
      else {
        this.event_delta_time = new PathDeltaTime();
      }
      if (initObj.hasOwnProperty('information_quality')) {
        this.information_quality = initObj.information_quality
      }
      else {
        this.information_quality = new InformationQuality();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventPoint
    // Serialize message field [event_position]
    bufferOffset = DeltaReferencePosition.serialize(obj.event_position, buffer, bufferOffset);
    // Serialize message field [event_delta_time]
    bufferOffset = PathDeltaTime.serialize(obj.event_delta_time, buffer, bufferOffset);
    // Serialize message field [information_quality]
    bufferOffset = InformationQuality.serialize(obj.information_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventPoint
    let len;
    let data = new EventPoint(null);
    // Deserialize message field [event_position]
    data.event_position = DeltaReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [event_delta_time]
    data.event_delta_time = PathDeltaTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [information_quality]
    data.information_quality = InformationQuality.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/EventPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b537fe840862e2b80e7cc1e698e9ac33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    DeltaReferencePosition event_position
    PathDeltaTime event_delta_time
    InformationQuality information_quality
    
    ================================================================================
    MSG: etsi_msgs/DeltaReferencePosition
    int32 delta_latitude # 0.1 micro degree
    int32 delta_longitude # 0.1 micro degree
    int16 delta_altitude # centimeter
    
    int32 ONE_MICRODEGREE_NORTH = 10
    int32 ONE_MICRODEGREE_SOUTH = -10
    int32 ONE_MICRODEGREE_EAST = 10
    int32 ONE_MICRODEGREE_WEST = -10
    int32 ONE_CENTIMETER_UP = 1
    int32 ONE_CENTIMETER_DOWN = -1
    int32 LATITUDE_UNAVAILABLE = 131072
    int32 LONGITUDE_UNAVAILABLE = 131072
    int16 ALTITUDE_UNAVAILABLE = 12800
    
    ================================================================================
    MSG: etsi_msgs/PathDeltaTime
    uint16 value # 10 ms
    
    uint16 UNAVAILABLE = 0
    uint16 TEN_MILLISECONDS_IN_PAST = 1
    
    ================================================================================
    MSG: etsi_msgs/InformationQuality
    int8 value
    
    int8 UNAVAILABLE = 0
    int8 LOWEST = 1
    int8 HIGHEST = 7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventPoint(null);
    if (msg.event_position !== undefined) {
      resolved.event_position = DeltaReferencePosition.Resolve(msg.event_position)
    }
    else {
      resolved.event_position = new DeltaReferencePosition()
    }

    if (msg.event_delta_time !== undefined) {
      resolved.event_delta_time = PathDeltaTime.Resolve(msg.event_delta_time)
    }
    else {
      resolved.event_delta_time = new PathDeltaTime()
    }

    if (msg.information_quality !== undefined) {
      resolved.information_quality = InformationQuality.Resolve(msg.information_quality)
    }
    else {
      resolved.information_quality = new InformationQuality()
    }

    return resolved;
    }
};

module.exports = EventPoint;
