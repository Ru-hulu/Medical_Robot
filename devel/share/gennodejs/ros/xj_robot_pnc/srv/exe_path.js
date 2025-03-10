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

class exe_pathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.path_name = null;
      this.dir = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
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
    // Serializes a message object of type exe_pathRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [path_name]
    bufferOffset = _serializer.string(obj.path_name, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.string(obj.dir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type exe_pathRequest
    let len;
    let data = new exe_pathRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
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
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/exe_pathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '547e8a352319040fe2a40865ad6349c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 START = 0
    uint8 STOP = 1
    uint8 PAUSE = 2
    
    uint8 command
    string path_name
    string dir
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new exe_pathRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

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

// Constants for message
exe_pathRequest.Constants = {
  START: 0,
  STOP: 1,
  PAUSE: 2,
}

class exe_pathResponse {
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
    // Serializes a message object of type exe_pathResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type exe_pathResponse
    let len;
    let data = new exe_pathResponse(null);
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
    return 'xj_robot_pnc/exe_pathResponse';
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
    const resolved = new exe_pathResponse(null);
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
  Request: exe_pathRequest,
  Response: exe_pathResponse,
  md5sum() { return '05ccd160c52332199029116636e3083a'; },
  datatype() { return 'xj_robot_pnc/exe_path'; }
};
