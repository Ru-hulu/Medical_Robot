// Auto-generated. Do not edit!

// (in-package xj_robot_pnc.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class record_startRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_name = null;
      this.dir = null;
    }
    else {
      if (initObj.hasOwnProperty('path_name')) {
        this.path_name = initObj.path_name
      }
      else {
        this.path_name = '';
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type record_startRequest
    // Serialize message field [path_name]
    bufferOffset = _serializer.string(obj.path_name, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.string(obj.dir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_startRequest
    let len;
    let data = new record_startRequest(null);
    // Deserialize message field [path_name]
    data.path_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.path_name);
    length += _getByteLength(object.dir);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/record_startRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '853c1a2c5795307b1ef04252400b960e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string path_name
    string dir
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new record_startRequest(null);
    if (msg.path_name !== undefined) {
      resolved.path_name = msg.path_name;
    }
    else {
      resolved.path_name = ''
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = ''
    }

    return resolved;
    }
};

class record_startResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type record_startResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_startResponse
    let len;
    let data = new record_startResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/record_startResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new record_startResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: record_startRequest,
  Response: record_startResponse,
  md5sum() { return '1ec11de8b8f99b8a7fdec75970d60c52'; },
  datatype() { return 'xj_robot_pnc/record_start'; }
};
