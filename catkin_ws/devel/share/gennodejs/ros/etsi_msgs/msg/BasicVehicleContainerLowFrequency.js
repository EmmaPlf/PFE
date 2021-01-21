// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleRole = require('./VehicleRole.js');
let ExteriorLights = require('./ExteriorLights.js');
let PathHistory = require('./PathHistory.js');

//-----------------------------------------------------------

class BasicVehicleContainerLowFrequency {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_role = null;
      this.exterior_lights = null;
      this.path_history = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_role')) {
        this.vehicle_role = initObj.vehicle_role
      }
      else {
        this.vehicle_role = new VehicleRole();
      }
      if (initObj.hasOwnProperty('exterior_lights')) {
        this.exterior_lights = initObj.exterior_lights
      }
      else {
        this.exterior_lights = new ExteriorLights();
      }
      if (initObj.hasOwnProperty('path_history')) {
        this.path_history = initObj.path_history
      }
      else {
        this.path_history = new PathHistory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BasicVehicleContainerLowFrequency
    // Serialize message field [vehicle_role]
    bufferOffset = VehicleRole.serialize(obj.vehicle_role, buffer, bufferOffset);
    // Serialize message field [exterior_lights]
    bufferOffset = ExteriorLights.serialize(obj.exterior_lights, buffer, bufferOffset);
    // Serialize message field [path_history]
    bufferOffset = PathHistory.serialize(obj.path_history, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BasicVehicleContainerLowFrequency
    let len;
    let data = new BasicVehicleContainerLowFrequency(null);
    // Deserialize message field [vehicle_role]
    data.vehicle_role = VehicleRole.deserialize(buffer, bufferOffset);
    // Deserialize message field [exterior_lights]
    data.exterior_lights = ExteriorLights.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_history]
    data.path_history = PathHistory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PathHistory.getMessageSize(object.path_history);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/BasicVehicleContainerLowFrequency';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5482aab88df6146441146840b8322331';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehicleRole vehicle_role
    ExteriorLights exterior_lights
    PathHistory path_history
    
    ================================================================================
    MSG: etsi_msgs/VehicleRole
    uint8 value
    
    uint8 DEFAULT = 0
    uint8 PUBLIC_TRANSPORT = 1
    uint8 SPECIAL_TRANSPORT = 2
    uint8 DANGEROUS_GOODS = 3
    uint8 ROAD_WORK = 4
    uint8 RESCUE = 5
    uint8 EMERGENCY = 6
    uint8 SAFETY_CAR = 7
    uint8 AGRICULTURE = 8
    uint8 COMMERCIAL = 9
    uint8 MILITARY = 10
    uint8 ROAD_OPERATOR = 11
    uint8 TAXI = 12
    
    ================================================================================
    MSG: etsi_msgs/ExteriorLights
    uint8 value
    
    uint8 LOW_BEAM_HEADLIGHTS = 1
    uint8 HIGH_BEAM_HEADLIGHTS = 2
    uint8 LEFT_TURN_SIGNAL = 4
    uint8 RIGHT_TURN_SIGNAL = 8
    uint8 DAYTIME_RUNNING_LIGHTS = 16
    uint8 REVERSE_LIGHT = 32
    uint8 FOG_LIGHT = 64
    uint8 PARKING_LIGHTS = 128
    
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
    const resolved = new BasicVehicleContainerLowFrequency(null);
    if (msg.vehicle_role !== undefined) {
      resolved.vehicle_role = VehicleRole.Resolve(msg.vehicle_role)
    }
    else {
      resolved.vehicle_role = new VehicleRole()
    }

    if (msg.exterior_lights !== undefined) {
      resolved.exterior_lights = ExteriorLights.Resolve(msg.exterior_lights)
    }
    else {
      resolved.exterior_lights = new ExteriorLights()
    }

    if (msg.path_history !== undefined) {
      resolved.path_history = PathHistory.Resolve(msg.path_history)
    }
    else {
      resolved.path_history = new PathHistory()
    }

    return resolved;
    }
};

module.exports = BasicVehicleContainerLowFrequency;
