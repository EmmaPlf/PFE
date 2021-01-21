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
let VitesseInterdistance = require('./VitesseInterdistance.js');

//-----------------------------------------------------------

class Platoon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_platoon = null;
      this.ids = null;
      this.nombre_vehicules = null;
      this.destination = null;
      this.vitesse_interdistance = null;
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
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('vitesse_interdistance')) {
        this.vitesse_interdistance = initObj.vitesse_interdistance
      }
      else {
        this.vitesse_interdistance = new VitesseInterdistance();
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
    // Serialize message field [destination]
    bufferOffset = ReferencePosition.serialize(obj.destination, buffer, bufferOffset);
    // Serialize message field [vitesse_interdistance]
    bufferOffset = VitesseInterdistance.serialize(obj.vitesse_interdistance, buffer, bufferOffset);
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
    // Deserialize message field [destination]
    data.destination = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [vitesse_interdistance]
    data.vitesse_interdistance = VitesseInterdistance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.ids.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Platoon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fff69630e9a6bd2b20508f0fab73dfb5';
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
    ReferencePosition destination
    
    # Vitesse et interdistance
    VitesseInterdistance vitesse_interdistance
    ================================================================================
    MSG: ece_msgs/IDs
    uint8 ID
    uint8 position
    ================================================================================
    MSG: ece_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    int32 altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    int32 ALTITUDE_UNAVAILABLE = 800001
    
    ================================================================================
    MSG: ece_msgs/VitesseInterdistance
    # Vitesse : 6 bits
    Speed speed
    
    # Interdistance : 2 bits
    uint8 interdistance
    ================================================================================
    MSG: ece_msgs/Speed
    uint16 value # 0.01 m/s
    uint8 confidence # 0.01 m/s
    
    uint16 VALUE_STANDSTILL = 0
    uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
    uint16 VALUE_UNAVAILABLE = 16383
    
    uint8 CONFIDENCE_OUT_OF_RANGE = 126
    uint8 CONFIDENCE_UNAVAILABLE = 127
    
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

    if (msg.destination !== undefined) {
      resolved.destination = ReferencePosition.Resolve(msg.destination)
    }
    else {
      resolved.destination = new ReferencePosition()
    }

    if (msg.vitesse_interdistance !== undefined) {
      resolved.vitesse_interdistance = VitesseInterdistance.Resolve(msg.vitesse_interdistance)
    }
    else {
      resolved.vitesse_interdistance = new VitesseInterdistance()
    }

    return resolved;
    }
};

module.exports = Platoon;
