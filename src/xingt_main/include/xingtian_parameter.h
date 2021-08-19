#include <ros/ros.h>
#include <stdio.h>

namespace XINGTIAN_Param
{
  
  struct leg_theta  //创建一个腿部结构体，包含各控制关节角度
    {
        float theta1;  //前部髋关节角度
        float theta3;  //后部髋关节角度
        float thetaa;  //踝关节与地面夹角
    };
    struct leg_velocity  //创建一个腿部结构体，包含各控制关节速度
    {
        float velocity1;  //前部髋关节速度
        float velocity3;  //后部髋关节速度
        float velocitya;  //踝关节与地面速度
    };
    struct leg_acc  //创建一个腿部结构体，包含各控制关节加速度
    {
        float acc1;  //前部髋关节加速度
        float acc3;  //后部髋关节加速度
        float acca;  //踝关节与地面加速度
    };
  
  struct leg
  {
    leg_theta theta;
    leg_velocity velocity;
    leg_acc acc;
  };
  
  // 定义五连杆长度
  static float L1 = 515;
  static float L2 = 515;
  static float L3 = 220;
  static float L4 = 515;
  static float L5 = 515; 
  // 定义两腿之间宽度
  static float L = 385;
  // 定义时间步长
  static float T_sup = 5;
  // 定义步距
  static float X_foot = 200;
  // 定义步高
  static float Y_foot = 200;

  static float delta_t = 0.1;
}
