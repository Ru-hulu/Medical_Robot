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

class people_id_uiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.people_id = null;
    }
    else {
      if (initObj.hasOwnProperty('people_id')) {
        this.people_id = initObj.people_id
      }
      else {
        this.people_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type people_id_uiRequest
    // Serialize message field [people_id]
    bufferOffset = _serializer.int32(obj.people_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type people_id_uiRequest
    let len;
    let data = new people_id_uiRequest(null);
    // Deserialize message field [people_id]
    data.people_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/people_id_uiRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c9e6726201cbf6822a62cbfd44572e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 people_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new people_id_uiRequest(null);
    if (msg.people_id !== undefined) {
      resolved.people_id = msg.people_id;
    }
    else {
      resolved.people_id = 0
    }

    return resolved;
    }
};

class people_id_uiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('get_ok')) {
        this.get_ok = initObj.get_ok
      }
      else {
        this.get_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type people_id_uiResponse
    // Serialize message field [get_ok]
    bufferOffset = _serializer.bool(obj.get_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type people_id_uiResponse
    let len;
    let data = new people_id_uiResponse(null);
    // Deserialize message field [get_ok]
    data.get_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/people_id_uiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4def4bf2b1517ba03b6a5bb49ad0019f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool get_ok
    
    ##发送病人id信息
    ##提供服务端接受到people_id后，马上返回get_ok。
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new people_id_uiResponse(null);
    if (msg.get_ok !== undefined) {
      resolved.get_ok = msg.get_ok;
    }
    else {
      resolved.get_ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: people_id_uiRequest,
  Response: people_id_uiResponse,
  md5sum() { return '951a25e8f2062cf3a7d7d54a9560079a'; },
  datatype() { return 'srvbg/people_id_ui'; }
};
