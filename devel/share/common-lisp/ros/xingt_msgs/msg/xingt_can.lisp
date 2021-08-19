; Auto-generated. Do not edit!


(cl:in-package xingt_msgs-msg)


;//! \htmlinclude xingt_can.msg.html

(cl:defclass <xingt_can> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (theta
    :reader theta
    :initarg :theta
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acc
    :reader acc
    :initarg :acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass xingt_can (<xingt_can>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xingt_can>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xingt_can)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xingt_msgs-msg:<xingt_can> is deprecated: use xingt_msgs-msg:xingt_can instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <xingt_can>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:header-val is deprecated.  Use xingt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <xingt_can>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:theta-val is deprecated.  Use xingt_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <xingt_can>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:velocity-val is deprecated.  Use xingt_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <xingt_can>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:acc-val is deprecated.  Use xingt_msgs-msg:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xingt_can>) ostream)
  "Serializes a message object of type '<xingt_can>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xingt_can>) istream)
  "Deserializes a message object of type '<xingt_can>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xingt_can>)))
  "Returns string type for a message object of type '<xingt_can>"
  "xingt_msgs/xingt_can")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xingt_can)))
  "Returns string type for a message object of type 'xingt_can"
  "xingt_msgs/xingt_can")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xingt_can>)))
  "Returns md5sum for a message object of type '<xingt_can>"
  "201e3b6a54967d49ef943463f351318e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xingt_can)))
  "Returns md5sum for a message object of type 'xingt_can"
  "201e3b6a54967d49ef943463f351318e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xingt_can>)))
  "Returns full string definition for message of type '<xingt_can>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 theta~%geometry_msgs/Vector3 velocity ~%geometry_msgs/Vector3 acc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xingt_can)))
  "Returns full string definition for message of type 'xingt_can"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 theta~%geometry_msgs/Vector3 velocity ~%geometry_msgs/Vector3 acc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xingt_can>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xingt_can>))
  "Converts a ROS message object to a list"
  (cl:list 'xingt_can
    (cl:cons ':header (header msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acc (acc msg))
))
