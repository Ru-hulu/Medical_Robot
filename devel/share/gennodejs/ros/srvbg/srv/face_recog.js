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

class face_recogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_face_recog = null;
    }
    else {
      if (initObj.hasOwnProperty('start_face_recog')) {
        this.start_face_recog = initObj.start_face_recog
      }
      else {
        this.start_face_recog = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type face_recogRequest
    // Serialize message field [start_face_recog]
    bufferOffset = _serializer.bool(obj.start_face_recog, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type face_recogRequest
    let len;
    let data = new face_recogRequest(null);
    // Deserialize message field [start_face_recog]
    data.start_face_recog = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/face_recogRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9a47b3cff5f3f6559ed7149c5211449';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_face_recog
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new face_recogRequest(null);
    if (msg.start_face_recog !== undefined) {
      resolved.start_face_recog = msg.start_face_recog;
    }
    else {
      resolved.start_face_recog = false
    }

    return resolved;
    }
};

class face_recogResponse {
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
    // Serializes a message object of type face_recogResponse
    // Serialize message field [people_id]
    bufferOffset = _serializer.int32(obj.people_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type face_recogResponse
    let len;
    let data = new face_recogResponse(null);
    // Deserialize message field [people_id]
    data.people_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/face_recogResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c9e6726201cbf6822a62cbfd44572e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 people_id
    
    ##人脸识别节点提供服务
    ##发送送一次，识别到对象为止。
    ##不发送请求，则不进行识别。
    ##start_face_recog数值无所谓
    ##返回people_id数值代表识别到的病人id。
    ##需要等待服务结束才能进行接下来的业务
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new face_recogResponse(null);
    if (msg.people_id !== undefined) {
      resolved.people_id = msg.people_id;
    }
    else {
      resolved.people_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: face_recogRequest,
  Response: face_recogResponse,
  md5sum() { return 'c4eb8bf02b945647ede55dad5ed70f85'; },
  datatype() { return 'srvbg/face_recog'; }
};
