#include "xingtian.h"
#include "math.h"
// 凌空步态
// input t 时间
// output leg 各关节角度
geometry_msgs::Vector3 XINGTIAN::volley_step(float t)
{
    geometry_msgs::Vector3 leg_theta; //定义一个腿部结构体
    int n;
    double x,y,z;  //x为前进方向足端位置坐标，y为水平方向足端位置坐标，z为竖直方向足端位置坐标
    n = int( t/(2*XINGTIAN_Param::T_sup));
    t = t-n*(2*XINGTIAN_Param::T_sup);  //确定在周期中的位置
    // std::cout <<"t    "<<t <<std::endl;
    if (t < XINGTIAN_Param::T_sup)
    {
        x = 16.0*(pow(t,3.0))-(24.0/5.0)*(pow(t,4.0))+(48.0/125.0)*(pow(t,5));
        z = 128.0*pow(t,2.0)-(256.0/5.0)*pow(t,3.0)+(128.0/25.0)*pow(t,4.0);
    }
    else
    {
        z = 0;
        x = XINGTIAN_Param::X_foot-(16.0*(pow(t-XINGTIAN_Param::T_sup,3))
                    -(24.0/5.0)*(pow(t-XINGTIAN_Param::T_sup,4))+(48.0/125.0)*(pow(t-XINGTIAN_Param::T_sup,5)));
    }
    // std::cout <<"z    "<<z <<std::endl;
    y = -0.5*XINGTIAN_Param::L;
    x = x-100;
    z = z + 100-XINGTIAN_Param::L1-XINGTIAN_Param::L2;


    
    float theta,theta22,alpha22,alpha33,alpha44;  //一些中间角度(弧度制)
    float L6,len1,len2;  //一些中间长度值

    theta=atan((y+0.5*XINGTIAN_Param::L)/z);
    
    
    
    
    float test = (pow(XINGTIAN_Param::L1,2.0)+ pow(XINGTIAN_Param::L2,2.0) 
          -pow((x-(XINGTIAN_Param::L3/2.0)),2) -(pow(z,2)/pow(cos(theta),2)));
    
    theta22=acos((pow(XINGTIAN_Param::L1,2)+pow(XINGTIAN_Param::L2,2)-pow(x-(XINGTIAN_Param::L3/2.0),2)-(pow(z,2)/pow(cos(theta),2)))/(2.0*XINGTIAN_Param::L1*XINGTIAN_Param::L2));
    leg_theta.x=acos(((XINGTIAN_Param::L1*sin(theta22)*z/cos(theta))+((XINGTIAN_Param::L1*cos(theta22)-XINGTIAN_Param::L2)
                        *(x-(XINGTIAN_Param::L3/2.0))))/(pow(XINGTIAN_Param::L1*cos(theta22)-XINGTIAN_Param::L2,2)
                                +pow(XINGTIAN_Param::L1*sin(theta22),2)));


    L6=sqrt(pow(x,2)+pow(y+(XINGTIAN_Param::L/2.0),2)+pow(z,2));
    len1=sqrt(pow(XINGTIAN_Param::L1,2)+pow(XINGTIAN_Param::L2,2)-2*XINGTIAN_Param::L1*XINGTIAN_Param::L2*cos(theta22));
    alpha22=acos((pow(XINGTIAN_Param::L3/2.0,2)+pow(L6,2)-pow(len1,2))/(XINGTIAN_Param::L3*L6));
    len2=sqrt(pow(XINGTIAN_Param::L3/2.0,2)+pow(L6,2)+XINGTIAN_Param::L3*L6*cos(alpha22));
    alpha33=acos((pow(XINGTIAN_Param::L3/2.0,2)+pow(len2,2)-pow(L6,2))/(XINGTIAN_Param::L3*len2));
    alpha44=acos((pow(XINGTIAN_Param::L4,2)+pow(len2,2)-pow(XINGTIAN_Param::L5,2))/(2*XINGTIAN_Param::L4*len2));

    leg_theta.y=alpha33+alpha44;
    leg_theta.z=leg_theta.x+theta22-M_PI;

    return leg_theta;  //返回该时刻此腿的各个关节角度
}


