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

class people_id_lanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('id_mode')) {
        this.id_mode = initObj.id_mode
      }
      else {
        this.id_mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type people_id_lanRequest
    // Serialize message field [id_mode]
    bufferOffset = _serializer.string(obj.id_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type people_id_lanRequest
    let len;
    let data = new people_id_lanRequest(null);
    // Deserialize message field [id_mode]
    data.id_mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id_mode);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/people_id_lanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbf9b5ea443f8c4b7044dfc5858cbcd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new people_id_lanRequest(null);
    if (msg.id_mode !== undefined) {
      resolved.id_mode = msg.id_mode;
    }
    else {
      resolved.id_mode = ''
    }

    return resolved;
    }
};

class people_id_lanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lang_end = null;
    }
    else {
      if (initObj.hasOwnProperty('lang_end')) {
        this.lang_end = initObj.lang_end
      }
      else {
        this.lang_end = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type people_id_lanResponse
    // Serialize message field [lang_end]
    bufferOffset = _serializer.bool(obj.lang_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type people_id_lanResponse
    let len;
    let data = new people_id_lanResponse(null);
    // Deserialize message field [lang_end]
    data.lang_end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/people_id_lanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '981da0baac59ad5b5999f1af6c1bd2cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool lang_end
    
    ## 大语言模型节点提供服务
    ## id_mode格式为 病人id_当前模式
    ## 例如3_0(病人3，当前为巡诊模式)3_1(病人3，当前为接待模式)
    ## lang_end 代表大语言模型对话结束
    ## 结束对话后才会返回。
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new people_id_lanResponse(null);
    if (msg.lang_end !== undefined) {
      resolved.lang_end = msg.lang_end;
    }
    else {
      resolved.lang_end = false
    }

    return resolved;
    }
};

module.exports = {
  Request: people_id_lanRequest,
  Response: people_id_lanResponse,
  md5sum() { return '4c24b88bb7a19a8415013642d1cfd801'; },
  datatype() { return 'srvbg/people_id_lan'; }
};
