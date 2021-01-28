// Auto-generated. Do not edit!

// (in-package simu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class simu_ECE {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.dest = null;
      this.permission = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('dest')) {
        this.dest = initObj.dest
      }
      else {
        this.dest = 0;
      }
      if (initObj.hasOwnProperty('permission')) {
        this.permission = initObj.permission
      }
      else {
        this.permission = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simu_ECE
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [dest]
    bufferOffset = _serializer.uint8(obj.dest, buffer, bufferOffset);
    // Serialize message field [permission]
    bufferOffset = _serializer.bool(obj.permission, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simu_ECE
    let len;
    let data = new simu_ECE(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [dest]
    data.dest = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [permission]
    data.permission = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simu_msgs/simu_ECE';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '854a5d894bacb9cbd8c41eec28f11a31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header 
    
    uint8 dest
    
    bool permission
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simu_ECE(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.dest !== undefined) {
      resolved.dest = msg.dest;
    }
    else {
      resolved.dest = 0
    }

    if (msg.permission !== undefined) {
      resolved.permission = msg.permission;
    }
    else {
      resolved.permission = false
    }

    return resolved;
    }
};

module.exports = simu_ECE;
