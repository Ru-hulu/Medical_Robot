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

class xj_robot_taskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.command = null;
      this.dir = null;
      this.path_name = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = '';
      }
      if (initObj.hasOwnProperty('path_name')) {
        this.path_name = initObj.path_name
      }
      else {
        this.path_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xj_robot_taskRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.string(obj.dir, buffer, bufferOffset);
    // Serialize message field [path_name]
    bufferOffset = _serializer.string(obj.path_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xj_robot_taskRequest
    let len;
    let data = new xj_robot_taskRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_name]
    data.path_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.dir);
    length += _getByteLength(object.path_name);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/xj_robot_taskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37cf218f2fd1c0c64f11e3c996987647';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EXECUTE = 0
    uint8 RECORD = 1
    
    uint8 START = 0
    uint8 PAUSE = 1
    uint8 STOP = 2
    
    uint8 KEEP = 1
    uint8 DISCARD = 2
    
    uint8 type #EXECUTE RECORD
    uint8 command #START PAUSE STOP KEEP DISCARD
    string dir
    string path_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xj_robot_taskRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = ''
    }

    if (msg.path_name !== undefined) {
      resolved.path_name = msg.path_name;
    }
    else {
      resolved.path_name = ''
    }

    return resolved;
    }
};

// Constants for message
xj_robot_taskRequest.Constants = {
  EXECUTE: 0,
  RECORD: 1,
  START: 0,
  PAUSE: 1,
  STOP: 2,
  KEEP: 1,
  DISCARD: 2,
}

class xj_robot_taskResponse {
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
    // Serializes a message object of type xj_robot_taskResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xj_robot_taskResponse
    let len;
    let data = new xj_robot_taskResponse(null);
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
    return 'xj_robot_pnc/xj_robot_taskResponse';
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
    const resolved = new xj_robot_taskResponse(null);
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
  Request: xj_robot_taskRequest,
  Response: xj_robot_taskResponse,
  md5sum() { return '347eea49e7b11fe6ce7ff80abc574c91'; },
  datatype() { return 'xj_robot_pnc/xj_robot_task'; }
};
