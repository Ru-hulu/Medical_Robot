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

class record_stopRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.keep = null;
    }
    else {
      if (initObj.hasOwnProperty('keep')) {
        this.keep = initObj.keep
      }
      else {
        this.keep = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type record_stopRequest
    // Serialize message field [keep]
    bufferOffset = _serializer.bool(obj.keep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_stopRequest
    let len;
    let data = new record_stopRequest(null);
    // Deserialize message field [keep]
    data.keep = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/record_stopRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d668459724465b058235914efc73a24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool keep
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new record_stopRequest(null);
    if (msg.keep !== undefined) {
      resolved.keep = msg.keep;
    }
    else {
      resolved.keep = false
    }

    return resolved;
    }
};

class record_stopResponse {
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
    // Serializes a message object of type record_stopResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_stopResponse
    let len;
    let data = new record_stopResponse(null);
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
    return 'xj_robot_pnc/record_stopResponse';
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
    const resolved = new record_stopResponse(null);
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
  Request: record_stopRequest,
  Response: record_stopResponse,
  md5sum() { return 'a25665d7f9b3b7071ad230c72b69fe34'; },
  datatype() { return 'xj_robot_pnc/record_stop'; }
};
