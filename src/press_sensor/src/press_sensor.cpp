#include "ClipX.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

#include "ros/ros.h"
#include "xingt_msgs/pressure_device.h"

int main(int argc, char **argv)
{

    ros::init(argc, argv, "press_sensor");
    ros::NodeHandle n("~");
	std::string connect_site;
    std::string pubname;
	// n.param<std::string>("connect_site", s);
    n.param("connect_site", connect_site, std::string("192.168.0.230"));
    n.param("pubname", pubname, std::string("pressure"));
    // n.getParam("connect_site", connect_site,);
    // n.param<std::string>("connect_site", s, "192.168.0.230");
	// ROS_INFO("connect site is : %s", s.c_str());

	
    ros::Publisher chatter_pub = n.advertise<xingt_msgs::pressure_device>(pubname, 10);
    xingt_msgs::pressure_device msg;
    
    // const char* ip = connect_site;
    ClipX  dev = ClipX();
	char buf[10];
	dev.Connect(connect_site.c_str());
	dev.SDOWrite(0x4428, 8, "1000");
	dev.SDORead(0x4428, 8, buf, 1);
    // ROS_INFO("Fifo Fill Rate: %s \n", buf);

	dev.startMeasurement();
    // ROS_INFO("Measurement Started");

        for (int i = 0; i < 50; i++) {
		// printf("Lines: %i", dev.AvailableLines());
        //std::cout << dev.AvailibleLines() ;
        double values[7];
        while (dev.AvailableLines() > 0){
            ROS_INFO("In loop\n");
            if (dev.ReadNextLine(values) > 0){
                    msg.data = values[3];
                    // ROS_INFO("%f",msg.data); 
                    chatter_pub.publish(msg);
                }
        }
                sleep(1);
    }
    dev.stopMeasurement();
	dev.Disconnect();

}


                        // for (int i = 0; i < 8; i++){
                        //     msg.data = values[i];
                        //     ROS_INFO("%f", msg.data);
                        //     chatter_pub.publish(msg);
                        //     ros::spinOnce(); 