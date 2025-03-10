// Auto-generated. Do not edit!

// (in-package srvbg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class recept_startRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_recept = null;
    }
    else {
      if (initObj.hasOwnProperty('start_recept')) {
        this.start_recept = initObj.start_recept
      }
      else {
        this.start_recept = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recept_startRequest
    // Serialize message field [start_recept]
    bufferOffset = _serializer.bool(obj.start_recept, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recept_startRequest
    let len;
    let data = new recept_startRequest(null);
    // Deserialize message field [start_recept]
    data.start_recept = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/recept_startRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3eca09550b24e7262c2260445c923ff7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_recept
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recept_startRequest(null);
    if (msg.start_recept !== undefined) {
      resolved.start_recept = msg.start_recept;
    }
    else {
      resolved.start_recept = false
    }

    return resolved;
    }
};

class recept_startResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('start_ok')) {
        this.start_ok = initObj.start_ok
      }
      else {
        this.start_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recept_startResponse
    // Serialize message field [start_ok]
    bufferOffset = _serializer.bool(obj.start_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recept_startResponse
    let len;
    let data = new recept_startResponse(null);
    // Deserialize message field [start_ok]
    data.start_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/recept_startResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6529c2881352cd2e270013292afd34c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_ok
    
    ## start_recept =  true代表开始接诊服务
    ## start_ok 代表当前 接诊节点的状态
    ## 提供服务端接受到服务请求后马上返回
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recept_startResponse(null);
    if (msg.start_ok !== undefined) {
      resolved.start_ok = msg.start_ok;
    }
    else {
      resolved.start_ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: recept_startRequest,
  Response: recept_startResponse,
  md5sum() { return '01e466c8eb71ba7ac0b6740b7da30b81'; },
  datatype() { return 'srvbg/recept_start'; }
};
