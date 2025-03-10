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

class visite_startRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_visit = null;
    }
    else {
      if (initObj.hasOwnProperty('start_visit')) {
        this.start_visit = initObj.start_visit
      }
      else {
        this.start_visit = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type visite_startRequest
    // Serialize message field [start_visit]
    bufferOffset = _serializer.bool(obj.start_visit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type visite_startRequest
    let len;
    let data = new visite_startRequest(null);
    // Deserialize message field [start_visit]
    data.start_visit = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/visite_startRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '223123a66209a82206e724a188ba4cc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_visit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new visite_startRequest(null);
    if (msg.start_visit !== undefined) {
      resolved.start_visit = msg.start_visit;
    }
    else {
      resolved.start_visit = false
    }

    return resolved;
    }
};

class visite_startResponse {
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
    // Serializes a message object of type visite_startResponse
    // Serialize message field [start_ok]
    bufferOffset = _serializer.bool(obj.start_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type visite_startResponse
    let len;
    let data = new visite_startResponse(null);
    // Deserialize message field [start_ok]
    data.start_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/visite_startResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6529c2881352cd2e270013292afd34c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_ok
    
    ## start_visit =  true代表开始巡诊服务
    ## start_ok 代表当前 巡诊节点的状态
    ## 提供服务端接受到服务请求后马上返回
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new visite_startResponse(null);
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
  Request: visite_startRequest,
  Response: visite_startResponse,
  md5sum() { return '3a3696aff47d8afac6800c82253e3809'; },
  datatype() { return 'srvbg/visite_start'; }
};
