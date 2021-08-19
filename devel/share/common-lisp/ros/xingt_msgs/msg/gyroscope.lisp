; Auto-generated. Do not edit!


(cl:in-package xingt_msgs-msg)


;//! \htmlinclude gyroscope.msg.html

(cl:defclass <gyroscope> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass gyroscope (<gyroscope>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gyroscope>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gyroscope)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xingt_msgs-msg:<gyroscope> is deprecated: use xingt_msgs-msg:gyroscope instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gyroscope>) ostream)
  "Serializes a message object of type '<gyroscope>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gyroscope>) istream)
  "Deserializes a message object of type '<gyroscope>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gyroscope>)))
  "Returns string type for a message object of type '<gyroscope>"
  "xingt_msgs/gyroscope")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gyroscope)))
  "Returns string type for a message object of type 'gyroscope"
  "xingt_msgs/gyroscope")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gyroscope>)))
  "Returns md5sum for a message object of type '<gyroscope>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gyroscope)))
  "Returns md5sum for a message object of type 'gyroscope"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gyroscope>)))
  "Returns full string definition for message of type '<gyroscope>"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%# Header header~%~%# geometry_msgs/Quaternion orientation~%# float64[9] orientation_covariance # Row major about x, y, z axes~%~%# geometry_msgs/Vector3 angular_velocity~%# float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%# geometry_msgs/Vector3 linear_acceleration~%# float64[9] linear_acceleration_covariance # Row major x, y z ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gyroscope)))
  "Returns full string definition for message of type 'gyroscope"
  (cl:format cl:nil "# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%# Header header~%~%# geometry_msgs/Quaternion orientation~%# float64[9] orientation_covariance # Row major about x, y, z axes~%~%# geometry_msgs/Vector3 angular_velocity~%# float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%# geometry_msgs/Vector3 linear_acceleration~%# float64[9] linear_acceleration_covariance # Row major x, y z ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gyroscope>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gyroscope>))
  "Converts a ROS message object to a list"
  (cl:list 'gyroscope
))
