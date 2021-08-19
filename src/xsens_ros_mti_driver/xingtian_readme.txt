/**************************************************************************************************************************************
/**************************************************************************************************************************************
/* Package Information
/**************************************************************************************************************************************
  Package:			xsens_mti_driver
  Node:				xsens_mti_driver
  Published Topics:
    /xingt/xsens/xsens_imu (xingt_msgs/xsens_imu.h)
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
      
/**************************************************************************************************************************************
/* Quick Start
/**************************************************************************************************************************************
  $ catkin_make -DCATKIN_WHITELIST_PACKAGES='xsens_mti_driver'
  $ roslaunch xsens_mti_driver xsens_mti_node.launch