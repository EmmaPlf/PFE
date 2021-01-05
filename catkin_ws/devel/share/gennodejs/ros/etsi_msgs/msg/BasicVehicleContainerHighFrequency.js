// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Heading = require('./Heading.js');
let Speed = require('./Speed.js');
let DriveDirection = require('./DriveDirection.js');
let VehicleLength = require('./VehicleLength.js');
let VehicleWidth = require('./VehicleWidth.js');
let LongitudinalAcceleration = require('./LongitudinalAcceleration.js');
let Curvature = require('./Curvature.js');
let CurvatureCalculationMode = require('./CurvatureCalculationMode.js');
let YawRate = require('./YawRate.js');
let AccelerationControl = require('./AccelerationControl.js');

//-----------------------------------------------------------

class BasicVehicleContainerHighFrequency {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heading = null;
      this.speed = null;
      this.drive_direction = null;
      this.vehicle_length = null;
      this.vehicle_width = null;
      this.longitudinal_acceleration = null;
      this.curvature = null;
      this.curvature_calculation_mode = null;
      this.yaw_rate = null;
      this.has_acceleration_control = null;
      this.acceleration_control = null;
    }
    else {
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = new Heading();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Speed();
      }
      if (initObj.hasOwnProperty('drive_direction')) {
        this.drive_direction = initObj.drive_direction
      }
      else {
        this.drive_direction = new DriveDirection();
      }
      if (initObj.hasOwnProperty('vehicle_length')) {
        this.vehicle_length = initObj.vehicle_length
      }
      else {
        this.vehicle_length = new VehicleLength();
      }
      if (initObj.hasOwnProperty('vehicle_width')) {
        this.vehicle_width = initObj.vehicle_width
      }
      else {
        this.vehicle_width = new VehicleWidth();
      }
      if (initObj.hasOwnProperty('longitudinal_acceleration')) {
        this.longitudinal_acceleration = initObj.longitudinal_acceleration
      }
      else {
        this.longitudinal_acceleration = new LongitudinalAcceleration();
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = new Curvature();
      }
      if (initObj.hasOwnProperty('curvature_calculation_mode')) {
        this.curvature_calculation_mode = initObj.curvature_calculation_mode
      }
      else {
        this.curvature_calculation_mode = new CurvatureCalculationMode();
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = new YawRate();
      }
      if (initObj.hasOwnProperty('has_acceleration_control')) {
        this.has_acceleration_control = initObj.has_acceleration_control
      }
      else {
        this.has_acceleration_control = false;
      }
      if (initObj.hasOwnProperty('acceleration_control')) {
        this.acceleration_control = initObj.acceleration_control
      }
      else {
        this.acceleration_control = new AccelerationControl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BasicVehicleContainerHighFrequency
    // Serialize message field [heading]
    bufferOffset = Heading.serialize(obj.heading, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = Speed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [drive_direction]
    bufferOffset = DriveDirection.serialize(obj.drive_direction, buffer, bufferOffset);
    // Serialize message field [vehicle_length]
    bufferOffset = VehicleLength.serialize(obj.vehicle_length, buffer, bufferOffset);
    // Serialize message field [vehicle_width]
    bufferOffset = VehicleWidth.serialize(obj.vehicle_width, buffer, bufferOffset);
    // Serialize message field [longitudinal_acceleration]
    bufferOffset = LongitudinalAcceleration.serialize(obj.longitudinal_acceleration, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = Curvature.serialize(obj.curvature, buffer, bufferOffset);
    // Serialize message field [curvature_calculation_mode]
    bufferOffset = CurvatureCalculationMode.serialize(obj.curvature_calculation_mode, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = YawRate.serialize(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [has_acceleration_control]
    bufferOffset = _serializer.bool(obj.has_acceleration_control, buffer, bufferOffset);
    // Serialize message field [acceleration_control]
    bufferOffset = AccelerationControl.serialize(obj.acceleration_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BasicVehicleContainerHighFrequency
    let len;
    let data = new BasicVehicleContainerHighFrequency(null);
    // Deserialize message field [heading]
    data.heading = Heading.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = Speed.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_direction]
    data.drive_direction = DriveDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_length]
    data.vehicle_length = VehicleLength.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_width]
    data.vehicle_width = VehicleWidth.deserialize(buffer, bufferOffset);
    // Deserialize message field [longitudinal_acceleration]
    data.longitudinal_acceleration = LongitudinalAcceleration.deserialize(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = Curvature.deserialize(buffer, bufferOffset);
    // Deserialize message field [curvature_calculation_mode]
    data.curvature_calculation_mode = CurvatureCalculationMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = YawRate.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_acceleration_control]
    data.has_acceleration_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acceleration_control]
    data.acceleration_control = AccelerationControl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/BasicVehicleContainerHighFrequency';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62bb6a047d37b6cdb33896921037161d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Heading heading
    Speed speed
    DriveDirection drive_direction
    VehicleLength vehicle_length
    VehicleWidth vehicle_width
    LongitudinalAcceleration longitudinal_acceleration
    Curvature curvature
    CurvatureCalculationMode curvature_calculation_mode
    YawRate yaw_rate
    
    # optional data fields
    bool has_acceleration_control
    AccelerationControl acceleration_control
    
    # TODO further (optional) data fields are missing
    
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
    MSG: etsi_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
    ================================================================================
    MSG: etsi_msgs/DriveDirection
    uint8 value
    
    uint8 FORWARD = 0
    uint8 BACKWARD = 1
    uint8 UNAVAILABLE = 2
    
    ================================================================================
    MSG: etsi_msgs/VehicleLength
    uint16 value # 0.1 meter
    uint8 confidence_indication
    
    uint16 VALUE_TEN_CENTIMETERS = 1
    uint16 VALUE_OUT_OF_RANGE = 1022
    uint16 VALUE_UNAVAILABLE = 1023
    
    uint8 CONFIDENCE_INDICATION_NO_TRAILER = 0
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_KNOWN_LENGTH = 1
    uint8 CONFIDENCE_INDICATION_TRAILER_WITH_UNKNOWN_LENGTH = 2
    uint8 CONFIDENCE_INDICATION_UNKNOWN_TRAILER_PRESENCE = 3
    uint8 CONFIDENCE_INDICATION_UNAVAILABLE = 4
    
    ================================================================================
    MSG: etsi_msgs/VehicleWidth
    uint8 value # 0.1 meter
    
    uint8 TEN_CENTIMETERS = 1
    uint8 OUT_OF_RANGE = 61
    uint8 UNAVAILABLE = 62
    
    ================================================================================
    MSG: etsi_msgs/LongitudinalAcceleration
    int16 value # 0.1 m/s^2
    uint8 confidence # 0.1 m/s^2
    
    int16 VALUE_UNAVAILABLE = 161
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 101
    uint8 CONFIDENCE_UNAVAILABLE = 102
    
    ================================================================================
    MSG: etsi_msgs/Curvature
    int16 value # m^-1
    uint8 confidence
    
    int16 VALUE_RIGHTMOST = -1023
    int16 VALUE_LEFTMOST = 1022
    int16 VALUE_MIN = -1023
    int16 VALUE_MAX = 1022
    int16 VALUE_STRAIGHT = 0
    int16 VALUE_UNAVAILABLE = 1023
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 6
    uint8 CONFIDENCE_UNAVAILABLE = 7
    
    ================================================================================
    MSG: etsi_msgs/CurvatureCalculationMode
    uint8 value
    
    uint8 YAW_RATE_USED = 0
    uint8 YAW_RATE_NOT_USED = 1
    uint8 UNAVAILABLE = 2
    
    ================================================================================
    MSG: etsi_msgs/YawRate
    int16 value # 0.01 degree/s
    uint8 confidence
    
    int16 VALUE_UNAVAILABLE = 32767
    
    uint8 CONFIDENCE_0DOT01_DEGSEC = 0
    uint8 CONFIDENCE_0DOT05_DEGSEC = 1
    uint8 CONFIDENCE_0DOT1_DEGSEC = 2
    uint8 CONFIDENCE_1_DEGSEC = 3
    uint8 CONFIDENCE_5_DEGSEC = 4
    uint8 CONFIDENCE_10_DEGSEC = 5
    uint8 CONFIDENCE_100_DEGSEC = 6
    uint8 CONFIDENCE_OUT_OF_RANGE = 7
    uint8 CONFIDENCE_UNAVAILABLE = 8
    
    ================================================================================
    MSG: etsi_msgs/AccelerationControl
    uint8 value
    
    uint8 BRAKE_PEDAL_ENGAGED = 1
    uint8 GAS_PEDAL_ENGAGED = 2
    uint8 EMERGENCY_BRAKE_ENGAGED = 4
    uint8 COLLISION_WARNING_ENGAGED = 8
    uint8 ACC_ENGAGED = 16
    uint8 CRUISE_CONTROL_ENGAGED = 32
    uint8 SPEED_LIMITER_ENGAGED = 64
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BasicVehicleContainerHighFrequency(null);
    if (msg.heading !== undefined) {
      resolved.heading = Heading.Resolve(msg.heading)
    }
    else {
      resolved.heading = new Heading()
    }

    if (msg.speed !== undefined) {
      resolved.speed = Speed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new Speed()
    }

    if (msg.drive_direction !== undefined) {
      resolved.drive_direction = DriveDirection.Resolve(msg.drive_direction)
    }
    else {
      resolved.drive_direction = new DriveDirection()
    }

    if (msg.vehicle_length !== undefined) {
      resolved.vehicle_length = VehicleLength.Resolve(msg.vehicle_length)
    }
    else {
      resolved.vehicle_length = new VehicleLength()
    }

    if (msg.vehicle_width !== undefined) {
      resolved.vehicle_width = VehicleWidth.Resolve(msg.vehicle_width)
    }
    else {
      resolved.vehicle_width = new VehicleWidth()
    }

    if (msg.longitudinal_acceleration !== undefined) {
      resolved.longitudinal_acceleration = LongitudinalAcceleration.Resolve(msg.longitudinal_acceleration)
    }
    else {
      resolved.longitudinal_acceleration = new LongitudinalAcceleration()
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = Curvature.Resolve(msg.curvature)
    }
    else {
      resolved.curvature = new Curvature()
    }

    if (msg.curvature_calculation_mode !== undefined) {
      resolved.curvature_calculation_mode = CurvatureCalculationMode.Resolve(msg.curvature_calculation_mode)
    }
    else {
      resolved.curvature_calculation_mode = new CurvatureCalculationMode()
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = YawRate.Resolve(msg.yaw_rate)
    }
    else {
      resolved.yaw_rate = new YawRate()
    }

    if (msg.has_acceleration_control !== undefined) {
      resolved.has_acceleration_control = msg.has_acceleration_control;
    }
    else {
      resolved.has_acceleration_control = false
    }

    if (msg.acceleration_control !== undefined) {
      resolved.acceleration_control = AccelerationControl.Resolve(msg.acceleration_control)
    }
    else {
      resolved.acceleration_control = new AccelerationControl()
    }

    return resolved;
    }
};

module.exports = BasicVehicleContainerHighFrequency;
