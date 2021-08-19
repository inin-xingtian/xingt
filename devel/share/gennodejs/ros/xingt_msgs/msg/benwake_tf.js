// Auto-generated. Do not edit!

// (in-package xingt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class benwake_tf {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tf_serial_port = null;
      this.tf_baud_rate = null;
      this.tf_dist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tf_serial_port')) {
        this.tf_serial_port = initObj.tf_serial_port
      }
      else {
        this.tf_serial_port = '';
      }
      if (initObj.hasOwnProperty('tf_baud_rate')) {
        this.tf_baud_rate = initObj.tf_baud_rate
      }
      else {
        this.tf_baud_rate = 0;
      }
      if (initObj.hasOwnProperty('tf_dist')) {
        this.tf_dist = initObj.tf_dist
      }
      else {
        this.tf_dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type benwake_tf
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tf_serial_port]
    bufferOffset = _serializer.string(obj.tf_serial_port, buffer, bufferOffset);
    // Serialize message field [tf_baud_rate]
    bufferOffset = _serializer.int32(obj.tf_baud_rate, buffer, bufferOffset);
    // Serialize message field [tf_dist]
    bufferOffset = _serializer.float32(obj.tf_dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type benwake_tf
    let len;
    let data = new benwake_tf(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tf_serial_port]
    data.tf_serial_port = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tf_baud_rate]
    data.tf_baud_rate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tf_dist]
    data.tf_dist = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.tf_serial_port);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xingt_msgs/benwake_tf';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2890d06f8c88be21649147a41e1abe4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header
    string  tf_serial_port
    int32   tf_baud_rate
    float32 tf_dist
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new benwake_tf(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tf_serial_port !== undefined) {
      resolved.tf_serial_port = msg.tf_serial_port;
    }
    else {
      resolved.tf_serial_port = ''
    }

    if (msg.tf_baud_rate !== undefined) {
      resolved.tf_baud_rate = msg.tf_baud_rate;
    }
    else {
      resolved.tf_baud_rate = 0
    }

    if (msg.tf_dist !== undefined) {
      resolved.tf_dist = msg.tf_dist;
    }
    else {
      resolved.tf_dist = 0.0
    }

    return resolved;
    }
};

module.exports = benwake_tf;
