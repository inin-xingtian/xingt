; Auto-generated. Do not edit!


(cl:in-package xingt_msgs-msg)


;//! \htmlinclude benwake_tf.msg.html

(cl:defclass <benwake_tf> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tf_serial_port
    :reader tf_serial_port
    :initarg :tf_serial_port
    :type cl:string
    :initform "")
   (tf_baud_rate
    :reader tf_baud_rate
    :initarg :tf_baud_rate
    :type cl:integer
    :initform 0)
   (tf_dist
    :reader tf_dist
    :initarg :tf_dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass benwake_tf (<benwake_tf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <benwake_tf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'benwake_tf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xingt_msgs-msg:<benwake_tf> is deprecated: use xingt_msgs-msg:benwake_tf instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <benwake_tf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:header-val is deprecated.  Use xingt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tf_serial_port-val :lambda-list '(m))
(cl:defmethod tf_serial_port-val ((m <benwake_tf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:tf_serial_port-val is deprecated.  Use xingt_msgs-msg:tf_serial_port instead.")
  (tf_serial_port m))

(cl:ensure-generic-function 'tf_baud_rate-val :lambda-list '(m))
(cl:defmethod tf_baud_rate-val ((m <benwake_tf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:tf_baud_rate-val is deprecated.  Use xingt_msgs-msg:tf_baud_rate instead.")
  (tf_baud_rate m))

(cl:ensure-generic-function 'tf_dist-val :lambda-list '(m))
(cl:defmethod tf_dist-val ((m <benwake_tf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:tf_dist-val is deprecated.  Use xingt_msgs-msg:tf_dist instead.")
  (tf_dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <benwake_tf>) ostream)
  "Serializes a message object of type '<benwake_tf>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tf_serial_port))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tf_serial_port))
  (cl:let* ((signed (cl:slot-value msg 'tf_baud_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tf_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <benwake_tf>) istream)
  "Deserializes a message object of type '<benwake_tf>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_serial_port) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tf_serial_port) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_baud_rate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tf_dist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<benwake_tf>)))
  "Returns string type for a message object of type '<benwake_tf>"
  "xingt_msgs/benwake_tf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'benwake_tf)))
  "Returns string type for a message object of type 'benwake_tf"
  "xingt_msgs/benwake_tf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<benwake_tf>)))
  "Returns md5sum for a message object of type '<benwake_tf>"
  "2890d06f8c88be21649147a41e1abe4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'benwake_tf)))
  "Returns md5sum for a message object of type 'benwake_tf"
  "2890d06f8c88be21649147a41e1abe4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<benwake_tf>)))
  "Returns full string definition for message of type '<benwake_tf>"
  (cl:format cl:nil "Header  header~%string  tf_serial_port~%int32   tf_baud_rate~%float32 tf_dist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'benwake_tf)))
  "Returns full string definition for message of type 'benwake_tf"
  (cl:format cl:nil "Header  header~%string  tf_serial_port~%int32   tf_baud_rate~%float32 tf_dist~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <benwake_tf>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'tf_serial_port))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <benwake_tf>))
  "Converts a ROS message object to a list"
  (cl:list 'benwake_tf
    (cl:cons ':header (header msg))
    (cl:cons ':tf_serial_port (tf_serial_port msg))
    (cl:cons ':tf_baud_rate (tf_baud_rate msg))
    (cl:cons ':tf_dist (tf_dist msg))
))
