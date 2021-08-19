;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::benwake_tf)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'benwake_tf (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::BENWAKE_TF")
  (make-package "XINGT_MSGS::BENWAKE_TF"))

(in-package "ROS")
;;//! \htmlinclude benwake_tf.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::benwake_tf
  :super ros::object
  :slots (_header _tf_serial_port _tf_baud_rate _tf_dist ))

(defmethod xingt_msgs::benwake_tf
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tf_serial_port __tf_serial_port) "")
    ((:tf_baud_rate __tf_baud_rate) 0)
    ((:tf_dist __tf_dist) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tf_serial_port (string __tf_serial_port))
   (setq _tf_baud_rate (round __tf_baud_rate))
   (setq _tf_dist (float __tf_dist))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tf_serial_port
   (&optional __tf_serial_port)
   (if __tf_serial_port (setq _tf_serial_port __tf_serial_port)) _tf_serial_port)
  (:tf_baud_rate
   (&optional __tf_baud_rate)
   (if __tf_baud_rate (setq _tf_baud_rate __tf_baud_rate)) _tf_baud_rate)
  (:tf_dist
   (&optional __tf_dist)
   (if __tf_dist (setq _tf_dist __tf_dist)) _tf_dist)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _tf_serial_port
    4 (length _tf_serial_port)
    ;; int32 _tf_baud_rate
    4
    ;; float32 _tf_dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _tf_serial_port
       (write-long (length _tf_serial_port) s) (princ _tf_serial_port s)
     ;; int32 _tf_baud_rate
       (write-long _tf_baud_rate s)
     ;; float32 _tf_dist
       (sys::poke _tf_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _tf_serial_port
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tf_serial_port (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _tf_baud_rate
     (setq _tf_baud_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _tf_dist
     (setq _tf_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xingt_msgs::benwake_tf :md5sum-) "2890d06f8c88be21649147a41e1abe4b")
(setf (get xingt_msgs::benwake_tf :datatype-) "xingt_msgs/benwake_tf")
(setf (get xingt_msgs::benwake_tf :definition-)
      "Header  header
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

")



(provide :xingt_msgs/benwake_tf "2890d06f8c88be21649147a41e1abe4b")


