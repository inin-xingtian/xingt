;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::motor_angle)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'motor_angle (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::MOTOR_ANGLE")
  (make-package "XINGT_MSGS::MOTOR_ANGLE"))

(in-package "ROS")
;;//! \htmlinclude motor_angle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::motor_angle
  :super ros::object
  :slots (_header _motorAngle ))

(defmethod xingt_msgs::motor_angle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motorAngle __motorAngle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motorAngle __motorAngle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motorAngle
   (&optional __motorAngle)
   (if __motorAngle (setq _motorAngle __motorAngle)) _motorAngle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _motorAngle
    (* 8    (length _motorAngle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _motorAngle
     (write-long (length _motorAngle) s)
     (dotimes (i (length _motorAngle))
       (sys::poke (elt _motorAngle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _motorAngle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motorAngle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motorAngle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get xingt_msgs::motor_angle :md5sum-) "113821ca482db708486595036ae6c738")
(setf (get xingt_msgs::motor_angle :datatype-) "xingt_msgs/motor_angle")
(setf (get xingt_msgs::motor_angle :definition-)
      "Header header

float64[]  motorAngle
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

")



(provide :xingt_msgs/motor_angle "113821ca482db708486595036ae6c738")


