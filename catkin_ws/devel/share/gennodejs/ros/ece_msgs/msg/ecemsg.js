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
let BasicContainer = require('./BasicContainer.js');
let Init = require('./Init.js');
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
      this.basic_container = null;
      this.init = null;
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
      if (initObj.hasOwnProperty('basic_container')) {
        this.basic_container = initObj.basic_container
      }
      else {
        this.basic_container = new BasicContainer();
      }
      if (initObj.hasOwnProperty('init')) {
        this.init = initObj.init
      }
      else {
        this.init = new Init();
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
    // Serialize message field [basic_container]
    bufferOffset = BasicContainer.serialize(obj.basic_container, buffer, bufferOffset);
    // Serialize message field [init]
    bufferOffset = Init.serialize(obj.init, buffer, bufferOffset);
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
    // Deserialize message field [basic_container]
    data.basic_container = BasicContainer.deserialize(buffer, bufferOffset);
    // Deserialize message field [init]
    data.init = Init.deserialize(buffer, bufferOffset);
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
    length += Init.getMessageSize(object.init);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/ecemsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f00b78410e3cd01986d5339f8ac6fc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ItsPduHeader its_header
    uint16 generation_delta_time # milliseconds since 2004 modulo 2^16
    
    # basic container
    BasicContainer basic_container
    
    # Init
    Init init
    
    # Insertion
    Insertion insertion
    
    # Desinsertion
    Desinsertion desinsertion 
    
    # Freinage d'urgence
    FreinageUrgence freinage_urgence
    
    # Feu
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
    uint8 MESSAGE_ID_ECE = 8
    ================================================================================
    MSG: ece_msgs/BasicContainer
    # ID expediteur
    uint8 ID_exp
    
    # ID destinataire
    uint8 ID_dest
    
    # Phase de plattoning
    Phase phase
    
    # Type de station
    StationType station_type
    ================================================================================
    MSG: ece_msgs/Phase
    # Phase de plattoning
    uint8 value
    
    uint8 INIT = 0
    uint8 INSERTION = 1
    uint8 DESINSERTION = 2
    uint8 FEU = 3
    uint8 FREINAGE_URG = 4
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
    MSG: ece_msgs/Init
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
    
    ================================================================================
    MSG: ece_msgs/Insertion
    # Point d'insertion : 8 octet 
    ReferencePosition point_insertion
    
    # Confirmation insertion : 1 octet
    bool confirmation_insertion
    ================================================================================
    MSG: ece_msgs/Desinsertion
    # Demande de sortie : 1 octet
    bool demande_sortie
    
    # Vitesse de sortie : 6 bits 
    Speed speed
    
    # Point de sortie : 8 octets
    ReferencePosition point_sortie
    
    # Nouvelle position dans P : 2 bits
    uint8 position
    
    # Confirmation insertion
    bool confirmation_sortie
    
    ================================================================================
    MSG: ece_msgs/FreinageUrgence
    # Position P : 2 bits
    uint8 position
    ================================================================================
    MSG: ece_msgs/Feu
    # Permission de passer le feu : 1 octet
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

    if (msg.basic_container !== undefined) {
      resolved.basic_container = BasicContainer.Resolve(msg.basic_container)
    }
    else {
      resolved.basic_container = new BasicContainer()
    }

    if (msg.init !== undefined) {
      resolved.init = Init.Resolve(msg.init)
    }
    else {
      resolved.init = new Init()
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
