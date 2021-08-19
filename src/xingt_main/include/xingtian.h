#include "xingtian_parameter.h"
#include "xingt_msgs/xingt_can.h"
#include <geometry_msgs/QuaternionStamped.h>
#include <ros/ros.h>
#include <cmath>

namespace XINGTIAN{
    float * knee_angle_deal(float theta1,float theta2);
    geometry_msgs::Vector3 volley_step(float t);
}