#include "xingtian.h"
float vl_theta1[2]={0,0},vl_theta3[2]={0,0},vl_thetaa[2]={0,0};
float al_theta1[3]={0,0,0},al_theta3[3]={0,0,0},al_thetaa[3]={0,0,0};
float vr_theta1[2]={0,0},vr_theta3[2]={0,0},vr_thetaa[2]={0,0};
float ar_theta1[3]={0,0,0},ar_theta3[3]={0,0,0},ar_thetaa[3]={0,0,0};
geometry_msgs::Vector3 get_left_velocity(geometry_msgs::Vector3 theta)
{
    geometry_msgs::Vector3 velocity;
    vl_theta1[0]=vl_theta1[1];
    vl_theta1[1]=theta.x;
    vl_theta3[0]=vl_theta3[1];
    vl_theta3[1]=theta.y;
    vl_thetaa[0]=vl_thetaa[1];
    vl_thetaa[1]=theta.z;
    velocity.x=(vl_theta1[1]-vl_theta1[0])/XINGTIAN_Param::delta_t;
    velocity.y=(vl_theta3[1]-vl_theta3[0])/XINGTIAN_Param::delta_t;
    velocity.z=(vl_thetaa[1]-vl_thetaa[0])/XINGTIAN_Param::delta_t;
    return velocity;
}
geometry_msgs::Vector3 get_right_velocity(geometry_msgs::Vector3 theta)
{
    geometry_msgs::Vector3 velocity;
    vr_theta1[0]=vr_theta1[1];
    vr_theta1[1]=theta.x;
    vr_theta3[0]=vr_theta3[1];
    vr_theta3[1]=theta.y;
    vr_thetaa[0]=vr_thetaa[1];
    vr_thetaa[1]=theta.z;
    velocity.x=(vr_theta1[1]-vr_theta3[0])/XINGTIAN_Param::delta_t;
    velocity.y=(vr_theta3[1]-vr_theta3[0])/XINGTIAN_Param::delta_t;
    velocity.z=(vr_thetaa[1]-vr_thetaa[0])/XINGTIAN_Param::delta_t;
    return velocity;
}

geometry_msgs::Vector3 get_left_acc(geometry_msgs::Vector3 theta)
{
    geometry_msgs::Vector3 acc;
    al_theta1[0]=al_theta1[1];
    al_theta1[1]=al_theta1[2];
    al_theta1[2]=theta.x;
    al_theta3[0]=al_theta3[1];
    al_theta3[1]=al_theta3[2];
    al_theta3[2]=theta.y;
    al_thetaa[0]=al_thetaa[1];
    al_thetaa[1]=al_thetaa[2];
    al_thetaa[2]=theta.z;
    acc.x=(al_theta1[2]+al_theta1[0]-2*al_theta1[1])/pow(XINGTIAN_Param::delta_t,2);
    acc.y=(al_theta3[2]+al_theta3[0]-2*al_theta3[1])/pow(XINGTIAN_Param::delta_t,2);
    acc.z=(al_thetaa[2]+al_thetaa[0]-2*al_thetaa[1])/pow(XINGTIAN_Param::delta_t,2);
    return acc;
}
geometry_msgs::Vector3 get_right_acc(geometry_msgs::Vector3 theta)
{
    geometry_msgs::Vector3 acc;
    ar_theta1[0]=ar_theta1[1];
    ar_theta1[1]=ar_theta1[2];
    ar_theta1[2]=theta.x;
    ar_theta3[0]=ar_theta3[1];
    ar_theta3[1]=ar_theta3[2];
    ar_theta3[2]=theta.y;
    ar_thetaa[0]=ar_thetaa[1];
    ar_thetaa[1]=ar_thetaa[2];
    ar_thetaa[2]=theta.z;
    acc.x=(ar_theta1[2]+ar_theta1[0]-2*ar_theta1[1])/pow(XINGTIAN_Param::delta_t,2);
    acc.y=(ar_theta3[2]+ar_theta3[0]-2*ar_theta3[1])/pow(XINGTIAN_Param::delta_t,2);
    acc.z=(ar_thetaa[2]+ar_thetaa[0]-2*ar_thetaa[1])/pow(XINGTIAN_Param::delta_t,2);
    return acc;
}


int main(int argc, char** argv)
{
	ros::init(argc, argv, "xingt_main_node");		//ROS串口节点名称
	ros::NodeHandle my_node;


    // 髋关节角度计算变量
    double left_init_theta_l,left_init_theta_r,right_init_theta_l,right_init_theta_r;

    my_node.param("left_init_theta_l", left_init_theta_l,134.0);
    my_node.param("left_init_theta_r", left_init_theta_r,137.0);
    my_node.param("right_init_theta_l", right_init_theta_l,134.0);
    my_node.param("right_init_theta_r", right_init_theta_r,137.0);
    
    float* left_theta_hip = XINGTIAN::knee_angle_deal(left_init_theta_l,left_init_theta_r);
    float* right_theta_hip = XINGTIAN::knee_angle_deal(right_init_theta_l,right_init_theta_r);



    // 凌空步态变量
    float t ;
    int num = 0;
    geometry_msgs::Vector3 ltheta;
    geometry_msgs::Vector3 rtheta;


    // publish 发布给can 定义
    ros::Publisher can_pub_left = my_node.advertise<xingt_msgs::xingt_can>("/xingt/can/left", 10);
    ros::Publisher can_pub_right = my_node.advertise<xingt_msgs::xingt_can>("/xingt/can/right", 10);
    xingt_msgs::xingt_can can_left_msg, can_right_msg;

    
	ros::Rate loop_rate(10);
    while(ros::ok())
    { 
        t = num * XINGTIAN_Param::delta_t;
        
        ltheta = XINGTIAN::volley_step(t);
        can_left_msg.theta = ltheta;
        rtheta = XINGTIAN::volley_step( t + XINGTIAN_Param::T_sup);
        can_right_msg.theta = rtheta;
        
        can_left_msg.velocity = get_left_velocity(ltheta);
        can_right_msg.velocity = get_right_velocity(rtheta);

        can_left_msg.acc = get_left_acc(ltheta);
        can_right_msg.acc = get_right_acc(rtheta);


        // 发送数据
        can_pub_left.publish(can_left_msg);
        can_pub_right.publish(can_right_msg);

        num ++;
        // std::cout << "time    "<<num <<std::endl;
        // std::cout << "v1    "<<legr.velocity.velocity1 <<"   theta1 "<<legl.theta.theta1<<std::endl;
        // std::cout << "v2    "<<legr.velocity.velocity3 <<"   theta2  "<<legl.theta.theta3<<std::endl;
        // std::cout << "v3    "<<legr.velocity.velocitya <<"   theta3  "<<legl.theta.thetaa<<std::endl;
        loop_rate.sleep();
    }
    
	return 0;
}

// Leg vl,vr,al,ar;



