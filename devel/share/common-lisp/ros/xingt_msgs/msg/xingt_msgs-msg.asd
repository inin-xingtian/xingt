
(cl:in-package :asdf)

(defsystem "xingt_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "benwake_tf" :depends-on ("_package_benwake_tf"))
    (:file "_package_benwake_tf" :depends-on ("_package"))
    (:file "encoder_coder" :depends-on ("_package_encoder_coder"))
    (:file "_package_encoder_coder" :depends-on ("_package"))
    (:file "laser_range" :depends-on ("_package_laser_range"))
    (:file "_package_laser_range" :depends-on ("_package"))
    (:file "motor_angle" :depends-on ("_package_motor_angle"))
    (:file "_package_motor_angle" :depends-on ("_package"))
    (:file "pressure_device" :depends-on ("_package_pressure_device"))
    (:file "_package_pressure_device" :depends-on ("_package"))
    (:file "xingt_can" :depends-on ("_package_xingt_can"))
    (:file "_package_xingt_can" :depends-on ("_package"))
    (:file "xsens_imu" :depends-on ("_package_xsens_imu"))
    (:file "_package_xsens_imu" :depends-on ("_package"))
  ))