;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::gyroscope)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'gyroscope (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::GYROSCOPE")
  (make-package "XINGT_MSGS::GYROSCOPE"))

(in-package "ROS")
;;//! \htmlinclude gyroscope.msg.html


(defclass xingt_msgs::gyroscope
  :super ros::object
  :slots ())

(defmethod xingt_msgs::gyroscope
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get xingt_msgs::gyroscope :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get xingt_msgs::gyroscope :datatype-) "xingt_msgs/gyroscope")
(setf (get xingt_msgs::gyroscope :definition-)
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

# Header header

# geometry_msgs/Quaternion orientation
# float64[9] orientation_covariance # Row major about x, y, z axes

# geometry_msgs/Vector3 angular_velocity
# float64[9] angular_velocity_covariance # Row major about x, y, z axes

# geometry_msgs/Vector3 linear_acceleration
# float64[9] linear_acceleration_covariance # Row major x, y z 
")



(provide :xingt_msgs/gyroscope "d41d8cd98f00b204e9800998ecf8427e")


