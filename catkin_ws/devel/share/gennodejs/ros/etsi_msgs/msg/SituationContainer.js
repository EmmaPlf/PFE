// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InformationQuality = require('./InformationQuality.js');
let CauseCode = require('./CauseCode.js');
let EventPoint = require('./EventPoint.js');

//-----------------------------------------------------------

class SituationContainer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.information_quality = null;
      this.event_type = null;
      this.has_linked_cause = null;
      this.linked_cause = null;
      this.event_history = null;
    }
    else {
      if (initObj.hasOwnProperty('information_quality')) {
        this.information_quality = initObj.information_quality
      }
      else {
        this.information_quality = new InformationQuality();
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = new CauseCode();
      }
      if (initObj.hasOwnProperty('has_linked_cause')) {
        this.has_linked_cause = initObj.has_linked_cause
      }
      else {
        this.has_linked_cause = false;
      }
      if (initObj.hasOwnProperty('linked_cause')) {
        this.linked_cause = initObj.linked_cause
      }
      else {
        this.linked_cause = new CauseCode();
      }
      if (initObj.hasOwnProperty('event_history')) {
        this.event_history = initObj.event_history
      }
      else {
        this.event_history = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SituationContainer
    // Serialize message field [information_quality]
    bufferOffset = InformationQuality.serialize(obj.information_quality, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = CauseCode.serialize(obj.event_type, buffer, bufferOffset);
    // Serialize message field [has_linked_cause]
    bufferOffset = _serializer.bool(obj.has_linked_cause, buffer, bufferOffset);
    // Serialize message field [linked_cause]
    bufferOffset = CauseCode.serialize(obj.linked_cause, buffer, bufferOffset);
    // Serialize message field [event_history]
    // Serialize the length for message field [event_history]
    bufferOffset = _serializer.uint32(obj.event_history.length, buffer, bufferOffset);
    obj.event_history.forEach((val) => {
      bufferOffset = EventPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SituationContainer
    let len;
    let data = new SituationContainer(null);
    // Deserialize message field [information_quality]
    data.information_quality = InformationQuality.deserialize(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = CauseCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_linked_cause]
    data.has_linked_cause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linked_cause]
    data.linked_cause = CauseCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [event_history]
    // Deserialize array length for message field [event_history]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.event_history = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.event_history[i] = EventPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.event_history.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/SituationContainer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9a79cc76182211b632e0fb2d42e16d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    InformationQuality information_quality
    CauseCode event_type
    bool has_linked_cause
    CauseCode linked_cause
    EventPoint[] event_history
    
    ================================================================================
    MSG: etsi_msgs/InformationQuality
    int8 value
    
    int8 UNAVAILABLE = 0
    int8 LOWEST = 1
    int8 HIGHEST = 7
    
    ================================================================================
    MSG: etsi_msgs/CauseCode
    uint8 cause_code
    uint8 sub_cause_code
    
    uint8 RESERVED = 0
    uint8 TRAFFIC_CONDITION = 1
    uint8 ACCIDENT = 2
    uint8 ROADWORKS = 3
    uint8 ADVERSE_WEATHER_CONDITIONS_ADHESION = 4
    uint8 HAZARDOUS_LOCATION_SURFACE_CONDITION = 9
    uint8 HAZARDOUS_LOCATION_OBSTACLE_ON_THE_ROAD = 10
    uint8 HAZARDOUS_LOCATION_ANIMAL_ON_THE_ROAD = 11
    uint8 HUMAN_PRESENCE_ON_THE_ROAD = 12
    uint8 WRONG_WAY_DRIVING = 14
    uint8 RESCUE_AND_RECOVERY_WORK_IN_PROGRESS = 15
    uint8 ADVERSE_WEATHER_CONDITIONS_EXTREME_WEATHER_CONDITION = 17
    uint8 ADVERSE_WEATHER_CONDITIONS_VISIBILITY = 18
    uint8 ADVERSE_WEATHER_CONDITIONS_PRECIPITATION = 19
    uint8 SLOW_VEHICLE = 26
    uint8 DANGEROUS_END_OF_QUEUE = 27
    uint8 VEHICLE_BREAKDOWN = 91
    uint8 POST_CRASH = 92
    uint8 HUMAN_PROBLEM = 93
    uint8 STATIONARY_VEHICLE = 94
    uint8 EMERGENCY_VEHICLE_APPROACHING = 95
    uint8 HAZARDOUS_LOCATION_DANGEROUS_CURVE = 96
    uint8 COLLISION_RISK = 97
    uint8 SIGNAL_VIOLATION = 98
    uint8 DANGEROUS_SITUATION = 99
    
    ================================================================================
    MSG: etsi_msgs/EventPoint
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SituationContainer(null);
    if (msg.information_quality !== undefined) {
      resolved.information_quality = InformationQuality.Resolve(msg.information_quality)
    }
    else {
      resolved.information_quality = new InformationQuality()
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = CauseCode.Resolve(msg.event_type)
    }
    else {
      resolved.event_type = new CauseCode()
    }

    if (msg.has_linked_cause !== undefined) {
      resolved.has_linked_cause = msg.has_linked_cause;
    }
    else {
      resolved.has_linked_cause = false
    }

    if (msg.linked_cause !== undefined) {
      resolved.linked_cause = CauseCode.Resolve(msg.linked_cause)
    }
    else {
      resolved.linked_cause = new CauseCode()
    }

    if (msg.event_history !== undefined) {
      resolved.event_history = new Array(msg.event_history.length);
      for (let i = 0; i < resolved.event_history.length; ++i) {
        resolved.event_history[i] = EventPoint.Resolve(msg.event_history[i]);
      }
    }
    else {
      resolved.event_history = []
    }

    return resolved;
    }
};

module.exports = SituationContainer;
