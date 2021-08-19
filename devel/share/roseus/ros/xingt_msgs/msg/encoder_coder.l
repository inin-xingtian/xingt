;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::encoder_coder)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'encoder_coder (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::ENCODER_CODER")
  (make-package "XINGT_MSGS::ENCODER_CODER"))

(in-package "ROS")
;;//! \htmlinclude encoder_coder.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::encoder_coder
  :super ros::object
  :slots (_header _ecoder_data ))

(defmethod xingt_msgs::encoder_coder
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ecoder_data __ecoder_data) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ecoder_data (float __ecoder_data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ecoder_data
   (&optional __ecoder_data)
   (if __ecoder_data (setq _ecoder_data __ecoder_data)) _ecoder_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _ecoder_data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _ecoder_data
       (sys::poke _ecoder_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _ecoder_data
     (setq _ecoder_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get xingt_msgs::encoder_coder :md5sum-) "b427f1933e5117154d51519851bf4287")
(setf (get xingt_msgs::encoder_coder :datatype-) "xingt_msgs/encoder_coder")
(setf (get xingt_msgs::encoder_coder :definition-)
      "Header  header
float64 ecoder_data
# float64 init_theta;
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



(provide :xingt_msgs/encoder_coder "b427f1933e5117154d51519851bf4287")


