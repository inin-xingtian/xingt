; Auto-generated. Do not edit!


(cl:in-package xingt_msgs-msg)


;//! \htmlinclude xsens_imu.msg.html

(cl:defclass <xsens_imu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (orientation_covariance
    :reader orientation_covariance
    :initarg :orientation_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (euler_angles
    :reader euler_angles
    :initarg :euler_angles
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity_covariance
    :reader angular_velocity_covariance
    :initarg :angular_velocity_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration_covariance
    :reader linear_acceleration_covariance
    :initarg :linear_acceleration_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (free_acceleration
    :reader free_acceleration
    :initarg :free_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dv
    :reader dv
    :initarg :dv
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dq
    :reader dq
    :initarg :dq
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass xsens_imu (<xsens_imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xsens_imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xsens_imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xingt_msgs-msg:<xsens_imu> is deprecated: use xingt_msgs-msg:xsens_imu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:header-val is deprecated.  Use xingt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:temperature-val is deprecated.  Use xingt_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:orientation-val is deprecated.  Use xingt_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_covariance-val :lambda-list '(m))
(cl:defmethod orientation_covariance-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:orientation_covariance-val is deprecated.  Use xingt_msgs-msg:orientation_covariance instead.")
  (orientation_covariance m))

(cl:ensure-generic-function 'euler_angles-val :lambda-list '(m))
(cl:defmethod euler_angles-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:euler_angles-val is deprecated.  Use xingt_msgs-msg:euler_angles instead.")
  (euler_angles m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:angular_velocity-val is deprecated.  Use xingt_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'angular_velocity_covariance-val :lambda-list '(m))
(cl:defmethod angular_velocity_covariance-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:angular_velocity_covariance-val is deprecated.  Use xingt_msgs-msg:angular_velocity_covariance instead.")
  (angular_velocity_covariance m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:linear_acceleration-val is deprecated.  Use xingt_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'linear_acceleration_covariance-val :lambda-list '(m))
(cl:defmethod linear_acceleration_covariance-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:linear_acceleration_covariance-val is deprecated.  Use xingt_msgs-msg:linear_acceleration_covariance instead.")
  (linear_acceleration_covariance m))

(cl:ensure-generic-function 'free_acceleration-val :lambda-list '(m))
(cl:defmethod free_acceleration-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:free_acceleration-val is deprecated.  Use xingt_msgs-msg:free_acceleration instead.")
  (free_acceleration m))

(cl:ensure-generic-function 'dv-val :lambda-list '(m))
(cl:defmethod dv-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:dv-val is deprecated.  Use xingt_msgs-msg:dv instead.")
  (dv m))

(cl:ensure-generic-function 'dq-val :lambda-list '(m))
(cl:defmethod dq-val ((m <xsens_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xingt_msgs-msg:dq-val is deprecated.  Use xingt_msgs-msg:dq instead.")
  (dq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xsens_imu>) ostream)
  "Serializes a message object of type '<xsens_imu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'orientation_covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_angles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'angular_velocity_covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'linear_acceleration_covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'free_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dq) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xsens_imu>) istream)
  "Deserializes a message object of type '<xsens_imu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (cl:setf (cl:slot-value msg 'orientation_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'orientation_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_angles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (cl:setf (cl:slot-value msg 'angular_velocity_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'angular_velocity_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (cl:setf (cl:slot-value msg 'linear_acceleration_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'linear_acceleration_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'free_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dq) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xsens_imu>)))
  "Returns string type for a message object of type '<xsens_imu>"
  "xingt_msgs/xsens_imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xsens_imu)))
  "Returns string type for a message object of type 'xsens_imu"
  "xingt_msgs/xsens_imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xsens_imu>)))
  "Returns md5sum for a message object of type '<xsens_imu>"
  "0be8442b6411af5cd0fa95a70e55adf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xsens_imu)))
  "Returns md5sum for a message object of type 'xsens_imu"
  "0be8442b6411af5cd0fa95a70e55adf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xsens_imu>)))
  "Returns full string definition for message of type '<xsens_imu>"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%float32 temperature~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # 四元数Row major about x, y, z axes~%~%geometry_msgs/Vector3 euler_angles # 欧拉角~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # 角速度Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # 线加速度Row major x, y z ~%~%~%geometry_msgs/Vector3 free_acceleration  # 自由线加速度Row major x, y z ~%~%geometry_msgs/Vector3 dv  # delta velocity Row major x, y z ~%~%~%geometry_msgs/Quaternion dq ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xsens_imu)))
  "Returns full string definition for message of type 'xsens_imu"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%float32 temperature~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # 四元数Row major about x, y, z axes~%~%geometry_msgs/Vector3 euler_angles # 欧拉角~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # 角速度Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # 线加速度Row major x, y z ~%~%~%geometry_msgs/Vector3 free_acceleration  # 自由线加速度Row major x, y z ~%~%geometry_msgs/Vector3 dv  # delta velocity Row major x, y z ~%~%~%geometry_msgs/Quaternion dq ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xsens_imu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_angles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angular_velocity_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'linear_acceleration_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'free_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dq))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xsens_imu>))
  "Converts a ROS message object to a list"
  (cl:list 'xsens_imu
    (cl:cons ':header (header msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_covariance (orientation_covariance msg))
    (cl:cons ':euler_angles (euler_angles msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':angular_velocity_covariance (angular_velocity_covariance msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':linear_acceleration_covariance (linear_acceleration_covariance msg))
    (cl:cons ':free_acceleration (free_acceleration msg))
    (cl:cons ':dv (dv msg))
    (cl:cons ':dq (dq msg))
))
