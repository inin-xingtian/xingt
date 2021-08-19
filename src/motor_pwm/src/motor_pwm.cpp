#include <stdio.h>
#include <string.h>
#include <ros/ros.h>
#include <ros/package.h>
#include <serial/serial.h>		//ros串口
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <fstream>
#include <iostream>
using namespace std;

std::string command_read="read";   //读取pwm设置
int main(int argc, char** argv)
{
	ros::init(argc, argv, "motor_pwm_node");		//ROS串口节点名称
	ros::NodeHandle my_node;
    std::string portName;
    int baud_rate;
    std::string command_hz="F2.00";   //设置pwm频率为1.05khz
    std::string pwm1;
    std::string pwm2;
    my_node.param("serial_port", portName, std::string("/dev/ttyUSB0"));
    my_node.param("baud_rate", baud_rate, 9600);
    my_node.param("pwm_hz", command_hz, std::string("F2.00"));
    my_node.param("pwm1", pwm1, std::string("D1:050"));
    my_node.param("pwm2", pwm2, std::string("D2:050"));
    


     //创建一个serial类
    serial::Serial sp;
    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(100);
    //设置要打开的串口名称
    sp.setPort(portName);
    //设置串口通信的波特率
    sp.setBaudrate(baud_rate);
    //串口设置timeout
    sp.setTimeout(to);
 
    try
    {
        //打开串口
        sp.open();
    }
    catch(serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port.");
        return -1;
    }
    
    //判断串口是否打开成功
    if(sp.isOpen())
    {
        ROS_INFO_STREAM("/dev/ttyUSB0 is opened.");
        sp.write(command_hz);
        std::string buffer1;
        buffer1 = sp.read(100);
        std::cout << buffer1 << "command_hz";     
        std::cout << std::endl;
    }
    else
    {
        return -1;
    }
	//指定循环的速率
	ros::Rate loop_rate(10);
    while(ros::ok())
    {
        
        sp.write(pwm1);
        ros::Duration(0.1).sleep();
        sp.write(pwm2);
        ros::Duration(0.1).sleep();
        loop_rate.sleep();
    }
    
    //关闭串口
    sp.close();
	return 0;
}