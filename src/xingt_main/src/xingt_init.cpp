#include "xingtian.h"
#include "math.h"


// 通过膝关节两个角度求解髋关节两个角度
// theta1:膝关节前部角度
// theta2:膝关节后部角度
// theta_hip[0]:髋关节前部角度
// theta_hip[1]:髋关节后部角度
float * XINGTIAN::knee_angle_deal(float theta1,float theta2){

    float* theta_hip =new float[2];
    float length1,length2;
    float alpha1,alpha2,alpha3,alpha4;

    theta1 = theta1 / 180.0 *M_PI;
    theta2 = theta2 / 180.0 *M_PI;

    length1=sqrt(pow(XINGTIAN_Param::L1,2)+pow(XINGTIAN_Param::L2,2)
                            -2.0*XINGTIAN_Param::L1*XINGTIAN_Param::L2*cos(theta1));
    alpha1=acos((pow(XINGTIAN_Param::L2,2)+pow(length1,2)-pow(XINGTIAN_Param::L1,2))
                            /(2.0*XINGTIAN_Param::L2*length1));
    length2=sqrt(pow(XINGTIAN_Param::L4,2)+pow(XINGTIAN_Param::L5,2)
                            -2.0*XINGTIAN_Param::L4*XINGTIAN_Param::L5*cos(theta2));
    alpha2=acos((pow(XINGTIAN_Param::L3,2)+pow(length1,2)-pow(length2,2))
                            /(2.0*XINGTIAN_Param::L3*length1));
    alpha3=acos((pow(XINGTIAN_Param::L4,2)+pow(length2,2)-pow(XINGTIAN_Param::L5,2))
                            /(2.0*XINGTIAN_Param::L4*length2));
    alpha4=acos((pow(XINGTIAN_Param::L3,2)+pow(length2,2)-pow(length1,2))
                            /(2.0*XINGTIAN_Param::L3*length2));

    theta_hip[0]=alpha1+alpha2;
    theta_hip[1]=alpha3+alpha4;
    return theta_hip;
}




