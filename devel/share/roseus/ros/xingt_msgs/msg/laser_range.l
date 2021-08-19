;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::laser_range)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'laser_range (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::LASER_RANGE")
  (make-package "XINGT_MSGS::LASER_RANGE"))

(in-package "ROS")
;;//! \htmlinclude laser_range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::laser_range
  :super ros::object
  :slots (_header _distence ))

(defmethod xingt_msgs::laser_range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:distence __distence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _distence __distence)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:distence
   (&optional __distence)
   (if __distence (setq _distence __distence)) _distence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _distence
    (* 8    (length _distence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _distence
     (write-long (length _distence) s)
     (dotimes (i (length _distence))
       (sys::poke (elt _distence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _distence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get xingt_msgs::laser_range :md5sum-) "e748a0d3c3338d7323b5506f7db1a7af")
(setf (get xingt_msgs::laser_range :datatype-) "xingt_msgs/laser_range")
(setf (get xingt_msgs::laser_range :definition-)
      "Header header

float64[]  distence
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



(provide :xingt_msgs/laser_range "e748a0d3c3338d7323b5506f7db1a7af")


