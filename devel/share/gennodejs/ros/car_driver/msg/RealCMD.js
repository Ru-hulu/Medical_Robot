// Auto-generated. Do not edit!

// (in-package car_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RealCMD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auto_mode = null;
      this.wheel_mode = null;
      this.wheel_left_v = null;
      this.wheel_right_v = null;
      this.stop_flag = null;
      this.re_enabled = null;
      this.disabled = null;
    }
    else {
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = false;
      }
      if (initObj.hasOwnProperty('wheel_mode')) {
        this.wheel_mode = initObj.wheel_mode
      }
      else {
        this.wheel_mode = 0;
      }
      if (initObj.hasOwnProperty('wheel_left_v')) {
        this.wheel_left_v = initObj.wheel_left_v
      }
      else {
        this.wheel_left_v = 0;
      }
      if (initObj.hasOwnProperty('wheel_right_v')) {
        this.wheel_right_v = initObj.wheel_right_v
      }
      else {
        this.wheel_right_v = 0;
      }
      if (initObj.hasOwnProperty('stop_flag')) {
        this.stop_flag = initObj.stop_flag
      }
      else {
        this.stop_flag = false;
      }
      if (initObj.hasOwnProperty('re_enabled')) {
        this.re_enabled = initObj.re_enabled
      }
      else {
        this.re_enabled = false;
      }
      if (initObj.hasOwnProperty('disabled')) {
        this.disabled = initObj.disabled
      }
      else {
        this.disabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RealCMD
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.bool(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [wheel_mode]
    bufferOffset = _serializer.uint16(obj.wheel_mode, buffer, bufferOffset);
    // Serialize message field [wheel_left_v]
    bufferOffset = _serializer.uint16(obj.wheel_left_v, buffer, bufferOffset);
    // Serialize message field [wheel_right_v]
    bufferOffset = _serializer.uint16(obj.wheel_right_v, buffer, bufferOffset);
    // Serialize message field [stop_flag]
    bufferOffset = _serializer.bool(obj.stop_flag, buffer, bufferOffset);
    // Serialize message field [re_enabled]
    bufferOffset = _serializer.bool(obj.re_enabled, buffer, bufferOffset);
    // Serialize message field [disabled]
    bufferOffset = _serializer.bool(obj.disabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RealCMD
    let len;
    let data = new RealCMD(null);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_mode]
    data.wheel_mode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [wheel_left_v]
    data.wheel_left_v = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [wheel_right_v]
    data.wheel_right_v = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stop_flag]
    data.stop_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [re_enabled]
    data.re_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disabled]
    data.disabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_driver/RealCMD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6838281da4a3b48cd4264834fb376e62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 小车运行模式切换。
    bool auto_mode
    
    # 轮毂电机左右轮速度值
    uint16 wheel_mode
    uint16 wheel_left_v
    uint16 wheel_right_v
    
    
    # 轮毂电机急停命令
    bool stop_flag
    
    # 轮毂电机重新使能命令
    bool re_enabled
    
    # 轮毂电机失能命令
    bool disabled 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RealCMD(null);
    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = false
    }

    if (msg.wheel_mode !== undefined) {
      resolved.wheel_mode = msg.wheel_mode;
    }
    else {
      resolved.wheel_mode = 0
    }

    if (msg.wheel_left_v !== undefined) {
      resolved.wheel_left_v = msg.wheel_left_v;
    }
    else {
      resolved.wheel_left_v = 0
    }

    if (msg.wheel_right_v !== undefined) {
      resolved.wheel_right_v = msg.wheel_right_v;
    }
    else {
      resolved.wheel_right_v = 0
    }

    if (msg.stop_flag !== undefined) {
      resolved.stop_flag = msg.stop_flag;
    }
    else {
      resolved.stop_flag = false
    }

    if (msg.re_enabled !== undefined) {
      resolved.re_enabled = msg.re_enabled;
    }
    else {
      resolved.re_enabled = false
    }

    if (msg.disabled !== undefined) {
      resolved.disabled = msg.disabled;
    }
    else {
      resolved.disabled = false
    }

    return resolved;
    }
};

module.exports = RealCMD;
