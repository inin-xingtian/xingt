;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::xingt_can)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'xingt_can (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::XINGT_CAN")
  (make-package "XINGT_MSGS::XINGT_CAN"))

(in-package "ROS")
;;//! \htmlinclude xingt_can.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::xingt_can
  :super ros::object
  :slots (_header _theta _velocity _acc ))

(defmethod xingt_msgs::xingt_can
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:theta __theta) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acc __acc) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _theta __theta)
   (setq _velocity __velocity)
   (setq _acc __acc)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _theta
    (send _theta :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acc
    (send _acc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _theta
       (send _theta :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acc
       (send _acc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;;
   self)
  )

(setf (get xingt_msgs::xingt_can :md5sum-) "201e3b6a54967d49ef943463f351318e")
(setf (get xingt_msgs::xingt_can :datatype-) "xingt_msgs/xingt_can")
(setf (get xingt_msgs::xingt_can :definition-)
      "Header header
geometry_msgs/Vector3 theta
geometry_msgs/Vector3 velocity 
geometry_msgs/Vector3 acc
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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :xingt_msgs/xingt_can "201e3b6a54967d49ef943463f351318e")


