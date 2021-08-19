#include <stdio.h>
#include <string.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <serial/serial.h>		//ros串口
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <fstream>
#include <iostream>
#include <xingt_msgs/encoder_coder.h>

namespace xingt_ecoder {
    uint8_t command[1]={0x02};
    static double init_ecoder_data;
    static double init_theta;
    static double zero_ecoder;
    // static const float init_ecoder_data_left= 11490;
    // static const float init_ecoder_data_right= 217490;
    // static const float init_theta_left= 137;
    // static const float init_theta_right= 134;
    // static const float zero_ecoder_left= init_ecoder_data_left+pow(2,19)/360*(360-init_theta_left);
    // static const float zero_ecoder_right= init_ecoder_data_right-pow(2,19)/360*init_theta_right;
}