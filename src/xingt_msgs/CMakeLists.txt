cmake_minimum_required(VERSION 2.8.3)
project(xingt_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  geometry_msgs
  sensor_msgs
)

add_message_files(
  FILES
  xingt_can.msg
  benwake_tf.msg
  encoder_coder.msg  
  laser_range.msg 
  xsens_imu.msg      
  motor_angle.msg 
  pressure_device.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  sensor_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES learning_communication
   CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

