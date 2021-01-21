// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferencePosition = require('./ReferencePosition.js');
let Platoon = require('./Platoon.js');

//-----------------------------------------------------------

class Init {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination = null;
      this.actual_position = null;
      this.platoon = null;
    }
    else {
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('actual_position')) {
        this.actual_position = initObj.actual_position
      }
      else {
        this.actual_position = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('platoon')) {
        this.platoon = initObj.platoon
      }
      else {
        this.platoon = new Platoon();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Init
    // Serialize message field [destination]
    bufferOffset = ReferencePosition.serialize(obj.destination, buffer, bufferOffset);
    // Serialize message field [actual_position]
    bufferOffset = ReferencePosition.serialize(obj.actual_position, buffer, bufferOffset);
    // Serialize message field [platoon]
    bufferOffset = Platoon.serialize(obj.platoon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Init
    let len;
    let data = new Init(null);
    // Deserialize message field [destination]
    data.destination = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual_position]
    data.actual_position = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [platoon]
    data.platoon = Platoon.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Platoon.getMessageSize(object.platoon);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Init';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f34eabbe979642b92d826c50c7719f17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Destination : 8 octets
    ReferencePosition destination
    
    # Actual position : 8 octets
    ReferencePosition actual_position
    
    # Platoon
    Platoon platoon
    
    ================================================================================
    MSG: ece_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    int32 altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    int32 ALTITUDE_UNAVAILABLE = 800001
    
    ================================================================================
    MSG: ece_msgs/Platoon
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
    const resolved = new Init(null);
    if (msg.destination !== undefined) {
      resolved.destination = ReferencePosition.Resolve(msg.destination)
    }
    else {
      resolved.destination = new ReferencePosition()
    }

    if (msg.actual_position !== undefined) {
      resolved.actual_position = ReferencePosition.Resolve(msg.actual_position)
    }
    else {
      resolved.actual_position = new ReferencePosition()
    }

    if (msg.platoon !== undefined) {
      resolved.platoon = Platoon.Resolve(msg.platoon)
    }
    else {
      resolved.platoon = new Platoon()
    }

    return resolved;
    }
};

module.exports = Init;
