// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ItsPduHeader = require('./ItsPduHeader.js');
let StationType = require('./StationType.js');
let Platoon = require('./Platoon.js');
let VitesseInterdistance = require('./VitesseInterdistance.js');
let Insertion = require('./Insertion.js');
let Desinsertion = require('./Desinsertion.js');
let FreinageUrgence = require('./FreinageUrgence.js');
let Feu = require('./Feu.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ecemsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.its_header = null;
      this.generation_delta_time = null;
      this.station_type = null;
      this.platoon = null;
      this.vitesse_interdistance = null;
      this.insertion = null;
      this.desinsertion = null;
      this.freinage_urgence = null;
      this.feu = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('its_header')) {
        this.its_header = initObj.its_header
      }
      else {
        this.its_header = new ItsPduHeader();
      }
      if (initObj.hasOwnProperty('generation_delta_time')) {
        this.generation_delta_time = initObj.generation_delta_time
      }
      else {
        this.generation_delta_time = 0;
      }
      if (initObj.hasOwnProperty('station_type')) {
        this.station_type = initObj.station_type
      }
      else {
        this.station_type = new StationType();
      }
      if (initObj.hasOwnProperty('platoon')) {
        this.platoon = initObj.platoon
      }
      else {
        this.platoon = new Platoon();
      }
      if (initObj.hasOwnProperty('vitesse_interdistance')) {
        this.vitesse_interdistance = initObj.vitesse_interdistance
      }
      else {
        this.vitesse_interdistance = new VitesseInterdistance();
      }
      if (initObj.hasOwnProperty('insertion')) {
        this.insertion = initObj.insertion
      }
      else {
        this.insertion = new Insertion();
      }
      if (initObj.hasOwnProperty('desinsertion')) {
        this.desinsertion = initObj.desinsertion
      }
      else {
        this.desinsertion = new Desinsertion();
      }
      if (initObj.hasOwnProperty('freinage_urgence')) {
        this.freinage_urgence = initObj.freinage_urgence
      }
      else {
        this.freinage_urgence = new FreinageUrgence();
      }
      if (initObj.hasOwnProperty('feu')) {
        this.feu = initObj.feu
      }
      else {
        this.feu = new Feu();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ecemsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [its_header]
    bufferOffset = ItsPduHeader.serialize(obj.its_header, buffer, bufferOffset);
    // Serialize message field [generation_delta_time]
    bufferOffset = _serializer.uint16(obj.generation_delta_time, buffer, bufferOffset);
    // Serialize message field [station_type]
    bufferOffset = StationType.serialize(obj.station_type, buffer, bufferOffset);
    // Serialize message field [platoon]
    bufferOffset = Platoon.serialize(obj.platoon, buffer, bufferOffset);
    // Serialize message field [vitesse_interdistance]
    bufferOffset = VitesseInterdistance.serialize(obj.vitesse_interdistance, buffer, bufferOffset);
    // Serialize message field [insertion]
    bufferOffset = Insertion.serialize(obj.insertion, buffer, bufferOffset);
    // Serialize message field [desinsertion]
    bufferOffset = Desinsertion.serialize(obj.desinsertion, buffer, bufferOffset);
    // Serialize message field [freinage_urgence]
    bufferOffset = FreinageUrgence.serialize(obj.freinage_urgence, buffer, bufferOffset);
    // Serialize message field [feu]
    bufferOffset = Feu.serialize(obj.feu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ecemsg
    let len;
    let data = new ecemsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [its_header]
    data.its_header = ItsPduHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [generation_delta_time]
    data.generation_delta_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [station_type]
    data.station_type = StationType.deserialize(buffer, bufferOffset);
    // Deserialize message field [platoon]
    data.platoon = Platoon.deserialize(buffer, bufferOffset);
    // Deserialize message field [vitesse_interdistance]
    data.vitesse_interdistance = VitesseInterdistance.deserialize(buffer, bufferOffset);
    // Deserialize message field [insertion]
    data.insertion = Insertion.deserialize(buffer, bufferOffset);
    // Deserialize message field [desinsertion]
    data.desinsertion = Desinsertion.deserialize(buffer, bufferOffset);
    // Deserialize message field [freinage_urgence]
    data.freinage_urgence = FreinageUrgence.deserialize(buffer, bufferOffset);
    // Deserialize message field [feu]
    data.feu = Feu.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 106;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/ecemsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7b2cb36ce6de0044edf394d8a8fc5ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ItsPduHeader its_header
    uint16 generation_delta_time # milliseconds since 2004 modulo 2^16
    
    # basic container
    StationType station_type
    
    Platoon platoon
    
    VitesseInterdistance vitesse_interdistance
    
    Insertion insertion 
    Desinsertion desinsertion 
    
    FreinageUrgence freinage_urgence
    
    Feu feu
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: ece_msgs/ItsPduHeader
    uint8 protocol_version
    uint8 message_id
    uint32 station_id
    
    uint8 MESSAGE_ID_DENM = 1
    uint8 MESSAGE_ID_CAM = 2
    uint8 MESSAGE_ID_ECE = 3
    ================================================================================
    MSG: ece_msgs/StationType
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
    ================================================================================
    MSG: ece_msgs/Platoon
    # ID Vt : 3 bits 
    uint8 id_vt
    
    # ID platoon : 3 bits
    uint8 id_platoon
    
    # ID autres véhicules platoon : 3 bits
    IDs ids 
    
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
    
    ================================================================================
    MSG: ece_msgs/Insertion
    # Point d'insertion : 8 octet 
    ReferencePosition reference_position
    
    # Confirmation insertion : 1 bits
    bool confirmation_insertion
    ================================================================================
    MSG: ece_msgs/Desinsertion
    # Demande de sortie : 1 bit
    
    # Vitesse de sortie : 6 bits 
    Speed speed
    
    # Point de sortie : 8 octets
    ReferencePosition reference_position
    
    # Nouvelle position dans P : 2 bits
    uint8 position
    ================================================================================
    MSG: ece_msgs/FreinageUrgence
    # Position P : 2 bits
    uint8 position
    ================================================================================
    MSG: ece_msgs/Feu
    # Permission de passer le feu : 1 bit
    bool permission_feu
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ecemsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.its_header !== undefined) {
      resolved.its_header = ItsPduHeader.Resolve(msg.its_header)
    }
    else {
      resolved.its_header = new ItsPduHeader()
    }

    if (msg.generation_delta_time !== undefined) {
      resolved.generation_delta_time = msg.generation_delta_time;
    }
    else {
      resolved.generation_delta_time = 0
    }

    if (msg.station_type !== undefined) {
      resolved.station_type = StationType.Resolve(msg.station_type)
    }
    else {
      resolved.station_type = new StationType()
    }

    if (msg.platoon !== undefined) {
      resolved.platoon = Platoon.Resolve(msg.platoon)
    }
    else {
      resolved.platoon = new Platoon()
    }

    if (msg.vitesse_interdistance !== undefined) {
      resolved.vitesse_interdistance = VitesseInterdistance.Resolve(msg.vitesse_interdistance)
    }
    else {
      resolved.vitesse_interdistance = new VitesseInterdistance()
    }

    if (msg.insertion !== undefined) {
      resolved.insertion = Insertion.Resolve(msg.insertion)
    }
    else {
      resolved.insertion = new Insertion()
    }

    if (msg.desinsertion !== undefined) {
      resolved.desinsertion = Desinsertion.Resolve(msg.desinsertion)
    }
    else {
      resolved.desinsertion = new Desinsertion()
    }

    if (msg.freinage_urgence !== undefined) {
      resolved.freinage_urgence = FreinageUrgence.Resolve(msg.freinage_urgence)
    }
    else {
      resolved.freinage_urgence = new FreinageUrgence()
    }

    if (msg.feu !== undefined) {
      resolved.feu = Feu.Resolve(msg.feu)
    }
    else {
      resolved.feu = new Feu()
    }

    return resolved;
    }
};

module.exports = ecemsg;
