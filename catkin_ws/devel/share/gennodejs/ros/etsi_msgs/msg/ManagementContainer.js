// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ActionID = require('./ActionID.js');
let ReferencePosition = require('./ReferencePosition.js');
let RelevanceDistance = require('./RelevanceDistance.js');
let RelevanceTrafficDirection = require('./RelevanceTrafficDirection.js');
let StationType = require('./StationType.js');

//-----------------------------------------------------------

class ManagementContainer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_id = null;
      this.detection_time = null;
      this.reference_time = null;
      this.termination = null;
      this.event_position = null;
      this.relevance_distance = null;
      this.relevance_traffic_direction = null;
      this.validity_duration = null;
      this.transmission_interval = null;
      this.station_type = null;
    }
    else {
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = new ActionID();
      }
      if (initObj.hasOwnProperty('detection_time')) {
        this.detection_time = initObj.detection_time
      }
      else {
        this.detection_time = 0;
      }
      if (initObj.hasOwnProperty('reference_time')) {
        this.reference_time = initObj.reference_time
      }
      else {
        this.reference_time = 0;
      }
      if (initObj.hasOwnProperty('termination')) {
        this.termination = initObj.termination
      }
      else {
        this.termination = 0;
      }
      if (initObj.hasOwnProperty('event_position')) {
        this.event_position = initObj.event_position
      }
      else {
        this.event_position = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('relevance_distance')) {
        this.relevance_distance = initObj.relevance_distance
      }
      else {
        this.relevance_distance = new RelevanceDistance();
      }
      if (initObj.hasOwnProperty('relevance_traffic_direction')) {
        this.relevance_traffic_direction = initObj.relevance_traffic_direction
      }
      else {
        this.relevance_traffic_direction = new RelevanceTrafficDirection();
      }
      if (initObj.hasOwnProperty('validity_duration')) {
        this.validity_duration = initObj.validity_duration
      }
      else {
        this.validity_duration = 0;
      }
      if (initObj.hasOwnProperty('transmission_interval')) {
        this.transmission_interval = initObj.transmission_interval
      }
      else {
        this.transmission_interval = 0;
      }
      if (initObj.hasOwnProperty('station_type')) {
        this.station_type = initObj.station_type
      }
      else {
        this.station_type = new StationType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManagementContainer
    // Serialize message field [action_id]
    bufferOffset = ActionID.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [detection_time]
    bufferOffset = _serializer.uint64(obj.detection_time, buffer, bufferOffset);
    // Serialize message field [reference_time]
    bufferOffset = _serializer.uint64(obj.reference_time, buffer, bufferOffset);
    // Serialize message field [termination]
    bufferOffset = _serializer.uint8(obj.termination, buffer, bufferOffset);
    // Serialize message field [event_position]
    bufferOffset = ReferencePosition.serialize(obj.event_position, buffer, bufferOffset);
    // Serialize message field [relevance_distance]
    bufferOffset = RelevanceDistance.serialize(obj.relevance_distance, buffer, bufferOffset);
    // Serialize message field [relevance_traffic_direction]
    bufferOffset = RelevanceTrafficDirection.serialize(obj.relevance_traffic_direction, buffer, bufferOffset);
    // Serialize message field [validity_duration]
    bufferOffset = _serializer.uint32(obj.validity_duration, buffer, bufferOffset);
    // Serialize message field [transmission_interval]
    bufferOffset = _serializer.uint32(obj.transmission_interval, buffer, bufferOffset);
    // Serialize message field [station_type]
    bufferOffset = StationType.serialize(obj.station_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManagementContainer
    let len;
    let data = new ManagementContainer(null);
    // Deserialize message field [action_id]
    data.action_id = ActionID.deserialize(buffer, bufferOffset);
    // Deserialize message field [detection_time]
    data.detection_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reference_time]
    data.reference_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [termination]
    data.termination = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [event_position]
    data.event_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [relevance_distance]
    data.relevance_distance = RelevanceDistance.deserialize(buffer, bufferOffset);
    // Deserialize message field [relevance_traffic_direction]
    data.relevance_traffic_direction = RelevanceTrafficDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [validity_duration]
    data.validity_duration = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [transmission_interval]
    data.transmission_interval = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [station_type]
    data.station_type = StationType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/ManagementContainer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ce1c69ce5bfe1b0889eb5e906278318';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ActionID action_id
    uint64 detection_time # ms since 2004
    uint64 reference_time # ms since 2004
    uint8 termination
    ReferencePosition event_position
    RelevanceDistance relevance_distance
    RelevanceTrafficDirection relevance_traffic_direction
    uint32 validity_duration # seconds
    uint32 transmission_interval # milliseconds
    StationType station_type
    
    uint8 TERMINATION_CANCELLATION = 0
    uint8 TERMINATION_NEGATION = 1
    uint8 TERMINATION_UNAVAILABLE = 255
    
    uint32 TRANSMISSION_INTERVAL_ONE_MILLISECOND = 1
    uint32 TRANSMISSION_INTERVAL_TEN_SECONDS = 10000
    uint32 TRANSMISSION_INTERVAL_UNAVAILABLE = 0
    
    uint32 VALIDITY_DURATION_DEFAULT = 600
    uint32 VALIDITY_DURATION_TIME_OF_DETECTION = 0
    uint32 VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION = 1
    
    ================================================================================
    MSG: etsi_msgs/ActionID
    uint32 station_id
    uint16 sequence_number
    
    ================================================================================
    MSG: etsi_msgs/ReferencePosition
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
    
    ================================================================================
    MSG: etsi_msgs/RelevanceDistance
    uint8 value
    
    uint8 LESS_THAN_50M = 0
    uint8 LESS_THAN_100M = 1
    uint8 LESS_THAN_200M = 2
    uint8 LESS_THAN_500M = 3
    uint8 LESS_THAN_1000M = 4
    uint8 LESS_THAN_5KM = 5
    uint8 LESS_THAN_10KM = 6
    uint8 OVER_10KM = 7
    uint8 UNAVAILABLE = 255
    
    ================================================================================
    MSG: etsi_msgs/RelevanceTrafficDirection
    uint8 value
    
    uint8 ALL_TRAFFIC_DIRECTIONS = 0
    uint8 UPSTREAM_TRAFFIC = 1
    uint8 DOWNSTREAM_TRAFFIC = 2
    uint8 OPPOSITE_TRAFFIC = 3
    uint8 UNAVAILABLE = 255 # extension to encode optional traffic directions
    
    ================================================================================
    MSG: etsi_msgs/StationType
    uint8 value
    
    uint8 UNKNOWN = 0
    uint8 PEDESTRIAN = 1
    uint8 CYCLIST = 2
    uint8 MOPED = 3
    uint8 MOTORCYCLE = 4
    uint8 PASSENGER_CAR = 5
    uint8 BUS = 6
    uint8 LIGHT_TRUCK = 7
    uint8 HEAVY_TRUCK = 8
    uint8 TRAILER = 9
    uint8 SPECIAL_VEHICLE = 10
    uint8 TRAM = 11
    uint8 ROAD_SIDE_UNIT = 15
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManagementContainer(null);
    if (msg.action_id !== undefined) {
      resolved.action_id = ActionID.Resolve(msg.action_id)
    }
    else {
      resolved.action_id = new ActionID()
    }

    if (msg.detection_time !== undefined) {
      resolved.detection_time = msg.detection_time;
    }
    else {
      resolved.detection_time = 0
    }

    if (msg.reference_time !== undefined) {
      resolved.reference_time = msg.reference_time;
    }
    else {
      resolved.reference_time = 0
    }

    if (msg.termination !== undefined) {
      resolved.termination = msg.termination;
    }
    else {
      resolved.termination = 0
    }

    if (msg.event_position !== undefined) {
      resolved.event_position = ReferencePosition.Resolve(msg.event_position)
    }
    else {
      resolved.event_position = new ReferencePosition()
    }

    if (msg.relevance_distance !== undefined) {
      resolved.relevance_distance = RelevanceDistance.Resolve(msg.relevance_distance)
    }
    else {
      resolved.relevance_distance = new RelevanceDistance()
    }

    if (msg.relevance_traffic_direction !== undefined) {
      resolved.relevance_traffic_direction = RelevanceTrafficDirection.Resolve(msg.relevance_traffic_direction)
    }
    else {
      resolved.relevance_traffic_direction = new RelevanceTrafficDirection()
    }

    if (msg.validity_duration !== undefined) {
      resolved.validity_duration = msg.validity_duration;
    }
    else {
      resolved.validity_duration = 0
    }

    if (msg.transmission_interval !== undefined) {
      resolved.transmission_interval = msg.transmission_interval;
    }
    else {
      resolved.transmission_interval = 0
    }

    if (msg.station_type !== undefined) {
      resolved.station_type = StationType.Resolve(msg.station_type)
    }
    else {
      resolved.station_type = new StationType()
    }

    return resolved;
    }
};

// Constants for message
ManagementContainer.Constants = {
  TERMINATION_CANCELLATION: 0,
  TERMINATION_NEGATION: 1,
  TERMINATION_UNAVAILABLE: 255,
  TRANSMISSION_INTERVAL_ONE_MILLISECOND: 1,
  TRANSMISSION_INTERVAL_TEN_SECONDS: 10000,
  TRANSMISSION_INTERVAL_UNAVAILABLE: 0,
  VALIDITY_DURATION_DEFAULT: 600,
  VALIDITY_DURATION_TIME_OF_DETECTION: 0,
  VALIDITY_DURATION_ONE_SECOND_AFTER_DETECTION: 1,
}

module.exports = ManagementContainer;
