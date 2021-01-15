// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IDs = require('./IDs.js');
let ReferencePosition = require('./ReferencePosition.js');

//-----------------------------------------------------------

class Platoon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_platoon = null;
      this.ids = null;
      this.nombre_vehicules = null;
      this.reference_position = null;
    }
    else {
      if (initObj.hasOwnProperty('id_platoon')) {
        this.id_platoon = initObj.id_platoon
      }
      else {
        this.id_platoon = 0;
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('nombre_vehicules')) {
        this.nombre_vehicules = initObj.nombre_vehicules
      }
      else {
        this.nombre_vehicules = 0;
      }
      if (initObj.hasOwnProperty('reference_position')) {
        this.reference_position = initObj.reference_position
      }
      else {
        this.reference_position = new ReferencePosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Platoon
    // Serialize message field [id_platoon]
    bufferOffset = _serializer.uint8(obj.id_platoon, buffer, bufferOffset);
    // Serialize message field [ids]
    // Serialize the length for message field [ids]
    bufferOffset = _serializer.uint32(obj.ids.length, buffer, bufferOffset);
    obj.ids.forEach((val) => {
      bufferOffset = IDs.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [nombre_vehicules]
    bufferOffset = _serializer.uint8(obj.nombre_vehicules, buffer, bufferOffset);
    // Serialize message field [reference_position]
    bufferOffset = ReferencePosition.serialize(obj.reference_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Platoon
    let len;
    let data = new Platoon(null);
    // Deserialize message field [id_platoon]
    data.id_platoon = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ids]
    // Deserialize array length for message field [ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ids[i] = IDs.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [nombre_vehicules]
    data.nombre_vehicules = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reference_position]
    data.reference_position = ReferencePosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.ids.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Platoon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7532dcd39ebae5557f8abd6a9baa912';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID platoon : 3 bits
    uint8 id_platoon
    
    # ID autres véhicules platoon
    IDs[] ids 
    
    # Nombre de véhicules : 3 bits
    uint8 nombre_vehicules
    
    # Destination : 8 octets
    ReferencePosition reference_position
    ================================================================================
    MSG: ece_msgs/IDs
    uint8 ID
    uint8 position
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
    const resolved = new Platoon(null);
    if (msg.id_platoon !== undefined) {
      resolved.id_platoon = msg.id_platoon;
    }
    else {
      resolved.id_platoon = 0
    }

    if (msg.ids !== undefined) {
      resolved.ids = new Array(msg.ids.length);
      for (let i = 0; i < resolved.ids.length; ++i) {
        resolved.ids[i] = IDs.Resolve(msg.ids[i]);
      }
    }
    else {
      resolved.ids = []
    }

    if (msg.nombre_vehicules !== undefined) {
      resolved.nombre_vehicules = msg.nombre_vehicules;
    }
    else {
      resolved.nombre_vehicules = 0
    }

    if (msg.reference_position !== undefined) {
      resolved.reference_position = ReferencePosition.Resolve(msg.reference_position)
    }
    else {
      resolved.reference_position = new ReferencePosition()
    }

    return resolved;
    }
};

module.exports = Platoon;
