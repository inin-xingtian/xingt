#ifndef XINGTXSENS_H
#define XINGTXSENS_H

#include "packetcallback.h"
#include <xingt_msgs/xsens_imu.h>
#include <geometry_msgs/QuaternionStamped.h>



struct XingT_Xsens_Publisher : public PacketCallback
{
    ros::Publisher pub;
    std::string frame_id = DEFAULT_FRAME_ID;


    double orientation_variance[3];
    double linear_acceleration_variance[3];
    double angular_velocity_variance[3];


    XingT_Xsens_Publisher(ros::NodeHandle &node)
    {
        int pub_queue_size = 5;
        ros::param::get("~publisher_queue_size", pub_queue_size);
        pub = node.advertise<xingt_msgs::xsens_imu>("/xingt/xsens/xsens_imu", pub_queue_size);
        ros::param::get("~frame_id", frame_id);

    }

    void operator()(const XsDataPacket &packet, ros::Time timestamp)
    {
        bool temperature_available = packet.containsTemperature();
        bool quaternion_available = packet.containsOrientation();
        bool gyro_available = packet.containsCalibratedGyroscopeData();
        bool accel_available = packet.containsCalibratedAcceleration();
        bool free_accel_available = packet.containsFreeAcceleration();
        bool deltav_available = packet.containsVelocityIncrement();
        bool deltaq_available = packet.containsOrientationIncrement();

        // 温度
        float_t temperature;
        if (temperature_available)
        {
            temperature = packet.temperature();
        }

        // 四元数和欧拉角
        geometry_msgs::Quaternion quaternion;
        geometry_msgs::Vector3 rpy;
        if (quaternion_available)
        {
            XsQuaternion q = packet.orientationQuaternion();

            quaternion.w = q.w();
            quaternion.x = q.x();
            quaternion.y = q.y();
            quaternion.z = q.z();
            
            
            XsEuler euler = packet.orientationEuler();

            rpy.x = euler.x();
            rpy.y = euler.y();
            rpy.z = euler.z();
       
        }


        // 角速度
        geometry_msgs::Vector3 gyro;
        if (gyro_available)
        {
            XsVector g = packet.calibratedGyroscopeData();
            gyro.x = g[0];
            gyro.y = g[1];
            gyro.z = g[2];
        }

        // 线加速度
        geometry_msgs::Vector3 accel;
        if (accel_available)
        {
            XsVector a = packet.calibratedAcceleration();
            accel.x = a[0];
            accel.y = a[1];
            accel.z = a[2];
        }


        // 自由加速度
        geometry_msgs::Vector3 free_accel;
        if (free_accel_available)
        {
            XsVector aa = packet.freeAcceleration();

            free_accel.x = aa[0];
            free_accel.y = aa[1];
            free_accel.z = aa[2];
        }

        // delta_v
        geometry_msgs::Vector3 deltav;
        if (deltav_available)
        {
            XsVector dv = packet.velocityIncrement();

            deltav.x = dv[0];
            deltav.y = dv[1];
            deltav.z = dv[2];
        }

        
        // delta_q
        geometry_msgs::Quaternion deltaq;
        if (deltaq_available)
        {
            XsQuaternion dq = packet.orientationIncrement();

            deltaq.w = dq.w();
            deltaq.x = dq.x();
            deltaq.y = dq.y();
            deltaq.z = dq.z();

        }


        // Imu message, publish if any of the fields is available
        if (temperature_available || quaternion_available || accel_available || gyro_available || free_accel_available)
        {
            xingt_msgs::xsens_imu msg;

            msg.header.stamp = timestamp;
            msg.header.frame_id = frame_id;

            msg.temperature =  temperature;

            msg.euler_angles = rpy;

            msg.orientation = quaternion;
            if (quaternion_available)
            {
                msg.orientation_covariance[0] = orientation_variance[0];
                msg.orientation_covariance[4] = orientation_variance[1];
                msg.orientation_covariance[8] = orientation_variance[2];
            }
            else
            {
                msg.orientation_covariance[0] = -1; // mark as not available
            }

            msg.angular_velocity = gyro;
            if (gyro_available)
            {
                msg.angular_velocity_covariance[0] = angular_velocity_variance[0];
                msg.angular_velocity_covariance[4] = angular_velocity_variance[1];
                msg.angular_velocity_covariance[8] = angular_velocity_variance[2];
            }
            else
            {
                msg.angular_velocity_covariance[0] = -1; // mark as not available
            }

            msg.linear_acceleration = accel;
            if (accel_available)
            {
                msg.linear_acceleration_covariance[0] = linear_acceleration_variance[0];
                msg.linear_acceleration_covariance[4] = linear_acceleration_variance[1];
                msg.linear_acceleration_covariance[8] = linear_acceleration_variance[2];
            }
            else
            {
                msg.linear_acceleration_covariance[0] = -1; // mark as not available
            }

            msg.free_acceleration = free_accel;

            msg.dv = deltav;

            msg.dq = deltaq;

            pub.publish(msg);
        }
    }
};

#endif
