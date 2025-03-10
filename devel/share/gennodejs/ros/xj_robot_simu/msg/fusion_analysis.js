// Auto-generated. Do not edit!

// (in-package xj_robot_simu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let carpose = require('./carpose.js');

//-----------------------------------------------------------

class fusion_analysis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_control = null;
      this.linear_feedback = null;
      this.angular_control = null;
      this.angular_feedback = null;
      this.lwheel_control = null;
      this.lwheel_feedback = null;
      this.lwheel_acc = null;
      this.rwheel_control = null;
      this.rwheel_feedback = null;
      this.rwheel_acc = null;
      this.odom_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_control')) {
        this.linear_control = initObj.linear_control
      }
      else {
        this.linear_control = 0.0;
      }
      if (initObj.hasOwnProperty('linear_feedback')) {
        this.linear_feedback = initObj.linear_feedback
      }
      else {
        this.linear_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('angular_control')) {
        this.angular_control = initObj.angular_control
      }
      else {
        this.angular_control = 0.0;
      }
      if (initObj.hasOwnProperty('angular_feedback')) {
        this.angular_feedback = initObj.angular_feedback
      }
      else {
        this.angular_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('lwheel_control')) {
        this.lwheel_control = initObj.lwheel_control
      }
      else {
        this.lwheel_control = 0.0;
      }
      if (initObj.hasOwnProperty('lwheel_feedback')) {
        this.lwheel_feedback = initObj.lwheel_feedback
      }
      else {
        this.lwheel_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('lwheel_acc')) {
        this.lwheel_acc = initObj.lwheel_acc
      }
      else {
        this.lwheel_acc = 0.0;
      }
      if (initObj.hasOwnProperty('rwheel_control')) {
        this.rwheel_control = initObj.rwheel_control
      }
      else {
        this.rwheel_control = 0.0;
      }
      if (initObj.hasOwnProperty('rwheel_feedback')) {
        this.rwheel_feedback = initObj.rwheel_feedback
      }
      else {
        this.rwheel_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('rwheel_acc')) {
        this.rwheel_acc = initObj.rwheel_acc
      }
      else {
        this.rwheel_acc = 0.0;
      }
      if (initObj.hasOwnProperty('odom_pose')) {
        this.odom_pose = initObj.odom_pose
      }
      else {
        this.odom_pose = new carpose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fusion_analysis
    // Serialize message field [linear_control]
    bufferOffset = _serializer.float32(obj.linear_control, buffer, bufferOffset);
    // Serialize message field [linear_feedback]
    bufferOffset = _serializer.float32(obj.linear_feedback, buffer, bufferOffset);
    // Serialize message field [angular_control]
    bufferOffset = _serializer.float32(obj.angular_control, buffer, bufferOffset);
    // Serialize message field [angular_feedback]
    bufferOffset = _serializer.float32(obj.angular_feedback, buffer, bufferOffset);
    // Serialize message field [lwheel_control]
    bufferOffset = _serializer.float32(obj.lwheel_control, buffer, bufferOffset);
    // Serialize message field [lwheel_feedback]
    bufferOffset = _serializer.float32(obj.lwheel_feedback, buffer, bufferOffset);
    // Serialize message field [lwheel_acc]
    bufferOffset = _serializer.float32(obj.lwheel_acc, buffer, bufferOffset);
    // Serialize message field [rwheel_control]
    bufferOffset = _serializer.float32(obj.rwheel_control, buffer, bufferOffset);
    // Serialize message field [rwheel_feedback]
    bufferOffset = _serializer.float32(obj.rwheel_feedback, buffer, bufferOffset);
    // Serialize message field [rwheel_acc]
    bufferOffset = _serializer.float32(obj.rwheel_acc, buffer, bufferOffset);
    // Serialize message field [odom_pose]
    bufferOffset = carpose.serialize(obj.odom_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fusion_analysis
    let len;
    let data = new fusion_analysis(null);
    // Deserialize message field [linear_control]
    data.linear_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_feedback]
    data.linear_feedback = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_control]
    data.angular_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_feedback]
    data.angular_feedback = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lwheel_control]
    data.lwheel_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lwheel_feedback]
    data.lwheel_feedback = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lwheel_acc]
    data.lwheel_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rwheel_control]
    data.rwheel_control = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rwheel_feedback]
    data.rwheel_feedback = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rwheel_acc]
    data.rwheel_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_pose]
    data.odom_pose = carpose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xj_robot_simu/fusion_analysis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9535f87409ff97acc35ef33565f17f12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linear_control #线速度指令
    float32 linear_feedback #线速度反馈
    float32 angular_control #角速度指令
    float32 angular_feedback #角速度反馈
    float32 lwheel_control #左轮转速指令
    float32 lwheel_feedback #左轮转速反馈
    float32 lwheel_acc #左轮加速度
    float32 rwheel_control #右轮转速指令
    float32 rwheel_feedback #右轮转速反馈
    float32 rwheel_acc #右轮加速度
    carpose odom_pose #odom位置
    ================================================================================
    MSG: xj_robot_simu/carpose
    float32 x
    float32 y
    float32 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fusion_analysis(null);
    if (msg.linear_control !== undefined) {
      resolved.linear_control = msg.linear_control;
    }
    else {
      resolved.linear_control = 0.0
    }

    if (msg.linear_feedback !== undefined) {
      resolved.linear_feedback = msg.linear_feedback;
    }
    else {
      resolved.linear_feedback = 0.0
    }

    if (msg.angular_control !== undefined) {
      resolved.angular_control = msg.angular_control;
    }
    else {
      resolved.angular_control = 0.0
    }

    if (msg.angular_feedback !== undefined) {
      resolved.angular_feedback = msg.angular_feedback;
    }
    else {
      resolved.angular_feedback = 0.0
    }

    if (msg.lwheel_control !== undefined) {
      resolved.lwheel_control = msg.lwheel_control;
    }
    else {
      resolved.lwheel_control = 0.0
    }

    if (msg.lwheel_feedback !== undefined) {
      resolved.lwheel_feedback = msg.lwheel_feedback;
    }
    else {
      resolved.lwheel_feedback = 0.0
    }

    if (msg.lwheel_acc !== undefined) {
      resolved.lwheel_acc = msg.lwheel_acc;
    }
    else {
      resolved.lwheel_acc = 0.0
    }

    if (msg.rwheel_control !== undefined) {
      resolved.rwheel_control = msg.rwheel_control;
    }
    else {
      resolved.rwheel_control = 0.0
    }

    if (msg.rwheel_feedback !== undefined) {
      resolved.rwheel_feedback = msg.rwheel_feedback;
    }
    else {
      resolved.rwheel_feedback = 0.0
    }

    if (msg.rwheel_acc !== undefined) {
      resolved.rwheel_acc = msg.rwheel_acc;
    }
    else {
      resolved.rwheel_acc = 0.0
    }

    if (msg.odom_pose !== undefined) {
      resolved.odom_pose = carpose.Resolve(msg.odom_pose)
    }
    else {
      resolved.odom_pose = new carpose()
    }

    return resolved;
    }
};

module.exports = fusion_analysis;
