;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::xsens_imu)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'xsens_imu (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::XSENS_IMU")
  (make-package "XINGT_MSGS::XSENS_IMU"))

(in-package "ROS")
;;//! \htmlinclude xsens_imu.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass xingt_msgs::xsens_imu
  :super ros::object
  :slots (_header _temperature _orientation _orientation_covariance _euler_angles _angular_velocity _angular_velocity_covariance _linear_acceleration _linear_acceleration_covariance _free_acceleration _dv _dq ))

(defmethod xingt_msgs::xsens_imu
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temperature __temperature) 0.0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:orientation_covariance __orientation_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:euler_angles __euler_angles) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity_covariance __angular_velocity_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:free_acceleration __free_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:dv __dv) (instance geometry_msgs::Vector3 :init))
    ((:dq __dq) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _temperature (float __temperature))
   (setq _orientation __orientation)
   (setq _orientation_covariance __orientation_covariance)
   (setq _euler_angles __euler_angles)
   (setq _angular_velocity __angular_velocity)
   (setq _angular_velocity_covariance __angular_velocity_covariance)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
   (setq _free_acceleration __free_acceleration)
   (setq _dv __dv)
   (setq _dq __dq)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:orientation_covariance
   (&optional __orientation_covariance)
   (if __orientation_covariance (setq _orientation_covariance __orientation_covariance)) _orientation_covariance)
  (:euler_angles
   (&rest __euler_angles)
   (if (keywordp (car __euler_angles))
       (send* _euler_angles __euler_angles)
     (progn
       (if __euler_angles (setq _euler_angles (car __euler_angles)))
       _euler_angles)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:angular_velocity_covariance
   (&optional __angular_velocity_covariance)
   (if __angular_velocity_covariance (setq _angular_velocity_covariance __angular_velocity_covariance)) _angular_velocity_covariance)
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:free_acceleration
   (&rest __free_acceleration)
   (if (keywordp (car __free_acceleration))
       (send* _free_acceleration __free_acceleration)
     (progn
       (if __free_acceleration (setq _free_acceleration (car __free_acceleration)))
       _free_acceleration)))
  (:dv
   (&rest __dv)
   (if (keywordp (car __dv))
       (send* _dv __dv)
     (progn
       (if __dv (setq _dv (car __dv)))
       _dv)))
  (:dq
   (&rest __dq)
   (if (keywordp (car __dq))
       (send* _dq __dq)
     (progn
       (if __dq (setq _dq (car __dq)))
       _dq)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _temperature
    4
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; float64[9] _orientation_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _euler_angles
    (send _euler_angles :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64[9] _angular_velocity_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float64[9] _linear_acceleration_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _free_acceleration
    (send _free_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _dv
    (send _dv :serialization-length)
    ;; geometry_msgs/Quaternion _dq
    (send _dq :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; float64[9] _orientation_covariance
     (dotimes (i 9)
       (sys::poke (elt _orientation_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _euler_angles
       (send _euler_angles :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64[9] _angular_velocity_covariance
     (dotimes (i 9)
       (sys::poke (elt _angular_velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float64[9] _linear_acceleration_covariance
     (dotimes (i 9)
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _free_acceleration
       (send _free_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _dv
       (send _dv :serialize s)
     ;; geometry_msgs/Quaternion _dq
       (send _dq :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64[9] _orientation_covariance
   (dotimes (i (length _orientation_covariance))
     (setf (elt _orientation_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _euler_angles
     (send _euler_angles :deserialize buf ptr-) (incf ptr- (send _euler_angles :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64[9] _angular_velocity_covariance
   (dotimes (i (length _angular_velocity_covariance))
     (setf (elt _angular_velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float64[9] _linear_acceleration_covariance
   (dotimes (i (length _linear_acceleration_covariance))
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _free_acceleration
     (send _free_acceleration :deserialize buf ptr-) (incf ptr- (send _free_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _dv
     (send _dv :deserialize buf ptr-) (incf ptr- (send _dv :serialization-length))
   ;; geometry_msgs/Quaternion _dq
     (send _dq :deserialize buf ptr-) (incf ptr- (send _dq :serialization-length))
   ;;
   self)
  )

(setf (get xingt_msgs::xsens_imu :md5sum-) "0be8442b6411af5cd0fa95a70e55adf9")
(setf (get xingt_msgs::xsens_imu :datatype-) "xingt_msgs/xsens_imu")
(setf (get xingt_msgs::xsens_imu :definition-)
      "# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

float32 temperature

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # 四元数Row major about x, y, z axes

geometry_msgs/Vector3 euler_angles # 欧拉角

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # 角速度Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # 线加速度Row major x, y z 


geometry_msgs/Vector3 free_acceleration  # 自由线加速度Row major x, y z 

geometry_msgs/Vector3 dv  # delta velocity Row major x, y z 


geometry_msgs/Quaternion dq 
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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :xingt_msgs/xsens_imu "0be8442b6411af5cd0fa95a70e55adf9")


