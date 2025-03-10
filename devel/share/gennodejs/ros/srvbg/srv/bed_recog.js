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

class bed_recogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_recog_bed = null;
    }
    else {
      if (initObj.hasOwnProperty('start_recog_bed')) {
        this.start_recog_bed = initObj.start_recog_bed
      }
      else {
        this.start_recog_bed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bed_recogRequest
    // Serialize message field [start_recog_bed]
    bufferOffset = _serializer.bool(obj.start_recog_bed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bed_recogRequest
    let len;
    let data = new bed_recogRequest(null);
    // Deserialize message field [start_recog_bed]
    data.start_recog_bed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/bed_recogRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20844199a57f52f5853274f7c4946ffa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start_recog_bed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bed_recogRequest(null);
    if (msg.start_recog_bed !== undefined) {
      resolved.start_recog_bed = msg.start_recog_bed;
    }
    else {
      resolved.start_recog_bed = false
    }

    return resolved;
    }
};

class bed_recogResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.have_people = null;
    }
    else {
      if (initObj.hasOwnProperty('have_people')) {
        this.have_people = initObj.have_people
      }
      else {
        this.have_people = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bed_recogResponse
    // Serialize message field [have_people]
    bufferOffset = _serializer.bool(obj.have_people, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bed_recogResponse
    let len;
    let data = new bed_recogResponse(null);
    // Deserialize message field [have_people]
    data.have_people = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srvbg/bed_recogResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c9541b38c0622b3de056b9ecccd85e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool have_people
    
    
    
    ##病床识别节点提供服务
    ##发送送一次，识别一次。
    ##不发送请求，则不进行识别。
    ##start_recog_bed数值无所谓
    ##返回have_people数值代表识别有无人。
    ##需要等待服务结束才能进行接下来的业务
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bed_recogResponse(null);
    if (msg.have_people !== undefined) {
      resolved.have_people = msg.have_people;
    }
    else {
      resolved.have_people = false
    }

    return resolved;
    }
};

module.exports = {
  Request: bed_recogRequest,
  Response: bed_recogResponse,
  md5sum() { return 'fabdbcfcb72f74f8be32621e26727406'; },
  datatype() { return 'srvbg/bed_recog'; }
};
