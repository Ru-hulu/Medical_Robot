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

class nav_goalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tar_x = null;
      this.tar_y = null;
      this.tar_z = null;
      this.tar_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('tar_x')) {
        this.tar_x = initObj.tar_x
      }
      else {
        this.tar_x = 0.0;
      }
      if (initObj.hasOwnProperty('tar_y')) {
        this.tar_y = initObj.tar_y
      }
      else {
        this.tar_y = 0.0;
      }
      if (initObj.hasOwnProperty('tar_z')) {
        this.tar_z = initObj.tar_z
      }
      else {
        this.tar_z = 0.0;
      }
      if (initObj.hasOwnProperty('tar_yaw')) {
        this.tar_yaw = initObj.tar_yaw
      }
      else {
        this.tar_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_goalRequest
    // Serialize message field [tar_x]
    bufferOffset = _serializer.float32(obj.tar_x, buffer, bufferOffset);
    // Serialize message field [tar_y]
    bufferOffset = _serializer.float32(obj.tar_y, buffer, bufferOffset);
    // Serialize message field [tar_z]
    bufferOffset = _serializer.float32(obj.tar_z, buffer, bufferOffset);
    // Serialize message field [tar_yaw]
    bufferOffset = _serializer.float32(obj.tar_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_goalRequest
    let len;
    let data = new nav_goalRequest(null);
    // Deserialize message field [tar_x]
    data.tar_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_y]
    data.tar_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_z]
    data.tar_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_yaw]
    data.tar_yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/nav_goalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e58971aac33852e1cd7a49aaeeeccdb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tar_x
    float32 tar_y
    float32 tar_z
    float32 tar_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_goalRequest(null);
    if (msg.tar_x !== undefined) {
      resolved.tar_x = msg.tar_x;
    }
    else {
      resolved.tar_x = 0.0
    }

    if (msg.tar_y !== undefined) {
      resolved.tar_y = msg.tar_y;
    }
    else {
      resolved.tar_y = 0.0
    }

    if (msg.tar_z !== undefined) {
      resolved.tar_z = msg.tar_z;
    }
    else {
      resolved.tar_z = 0.0
    }

    if (msg.tar_yaw !== undefined) {
      resolved.tar_yaw = msg.tar_yaw;
    }
    else {
      resolved.tar_yaw = 0.0
    }

    return resolved;
    }
};

class nav_goalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reach_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('reach_ok')) {
        this.reach_ok = initObj.reach_ok
      }
      else {
        this.reach_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_goalResponse
    // Serialize message field [reach_ok]
    bufferOffset = _serializer.bool(obj.reach_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_goalResponse
    let len;
    let data = new nav_goalResponse(null);
    // Deserialize message field [reach_ok]
    data.reach_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xj_robot_pnc/nav_goalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54e5c6356731ff88942bb53a37f7c1f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reach_ok
    
    ##导航节点提供服务
    ##发送位姿信息，reach_ok代表是否成功到达位姿。
    ##导航服务结束后才返回
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_goalResponse(null);
    if (msg.reach_ok !== undefined) {
      resolved.reach_ok = msg.reach_ok;
    }
    else {
      resolved.reach_ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: nav_goalRequest,
  Response: nav_goalResponse,
  md5sum() { return '5776176c95d37b90d51191fc6ec03fc8'; },
  datatype() { return 'xj_robot_pnc/nav_goal'; }
};
