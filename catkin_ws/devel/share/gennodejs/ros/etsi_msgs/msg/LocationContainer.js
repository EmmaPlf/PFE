// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Speed = require('./Speed.js');
let Heading = require('./Heading.js');
let PathHistory = require('./PathHistory.js');

//-----------------------------------------------------------

class LocationContainer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event_speed = null;
      this.event_position_heading = null;
      this.traces = null;
      this.road_type = null;
    }
    else {
      if (initObj.hasOwnProperty('event_speed')) {
        this.event_speed = initObj.event_speed
      }
      else {
        this.event_speed = new Speed();
      }
      if (initObj.hasOwnProperty('event_position_heading')) {
        this.event_position_heading = initObj.event_position_heading
      }
      else {
        this.event_position_heading = new Heading();
      }
      if (initObj.hasOwnProperty('traces')) {
        this.traces = initObj.traces
      }
      else {
        this.traces = [];
      }
      if (initObj.hasOwnProperty('road_type')) {
        this.road_type = initObj.road_type
      }
      else {
        this.road_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocationContainer
    // Serialize message field [event_speed]
    bufferOffset = Speed.serialize(obj.event_speed, buffer, bufferOffset);
    // Serialize message field [event_position_heading]
    bufferOffset = Heading.serialize(obj.event_position_heading, buffer, bufferOffset);
    // Serialize message field [traces]
    // Serialize the length for message field [traces]
    bufferOffset = _serializer.uint32(obj.traces.length, buffer, bufferOffset);
    obj.traces.forEach((val) => {
      bufferOffset = PathHistory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_type]
    bufferOffset = _serializer.uint8(obj.road_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocationContainer
    let len;
    let data = new LocationContainer(null);
    // Deserialize message field [event_speed]
    data.event_speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [event_position_heading]
    data.event_position_heading = Heading.deserialize(buffer, bufferOffset);
    // Deserialize message field [traces]
    // Deserialize array length for message field [traces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traces[i] = PathHistory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_type]
    data.road_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.traces.forEach((val) => {
      length += PathHistory.getMessageSize(val);
    });
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/LocationContainer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a09dcf7fff0ab0b3181252f05813385c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Speed event_speed
    Heading event_position_heading
    PathHistory[] traces
    uint8 road_type
    
    uint8 ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 0
    uint8 ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 1
    uint8 ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 2
    uint8 ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES = 3
    uint8 ROAD_TYPE_UNAVAILABLE = 255
    
    ================================================================================
    MSG: etsi_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/Heading
    uint16 value # 0.1 degree
    uint8 confidence
    
    uint16 VALUE_NORTH = 0
    uint16 VALUE_EAST = 900
    uint16 VALUE_SOUTH = 1800
    uint16 VALUE_WEST = 2700
    uint16 VALUE_UNAVAILABLE = 3601
    
    uint8 CONFIDENCE_ZERO_POINT_ONE_DEGREE = 1
    uint8 CONFIDENCE_ONE_DEGREE = 10
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/PathHistory
    PathPoint[] points
    
    ================================================================================
    MSG: etsi_msgs/PathPoint
    DeltaReferencePosition path_position
    PathDeltaTime path_delta_time
    
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
    const resolved = new LocationContainer(null);
    if (msg.event_speed !== undefined) {
      resolved.event_speed = Speed.Resolve(msg.event_speed)
    }
    else {
      resolved.event_speed = new Speed()
    }

    if (msg.event_position_heading !== undefined) {
      resolved.event_position_heading = Heading.Resolve(msg.event_position_heading)
    }
    else {
      resolved.event_position_heading = new Heading()
    }

    if (msg.traces !== undefined) {
      resolved.traces = new Array(msg.traces.length);
      for (let i = 0; i < resolved.traces.length; ++i) {
        resolved.traces[i] = PathHistory.Resolve(msg.traces[i]);
      }
    }
    else {
      resolved.traces = []
    }

    if (msg.road_type !== undefined) {
      resolved.road_type = msg.road_type;
    }
    else {
      resolved.road_type = 0
    }

    return resolved;
    }
};

// Constants for message
LocationContainer.Constants = {
  ROAD_TYPE_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES: 0,
  ROAD_TYPE_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES: 1,
  ROAD_TYPE_NON_URBAN_NO_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES: 2,
  ROAD_TYPE_NON_URBAN_WITH_STRUCTURAL_SEPARATION_TO_OPPOSITE_LANES: 3,
  ROAD_TYPE_UNAVAILABLE: 255,
}

module.exports = LocationContainer;
