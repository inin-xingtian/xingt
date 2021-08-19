#include <ecoder_coder.h>
int main(int argc, char** argv)
{
	uint8_t command[1]={0x02};
    ros::init(argc, argv, "ecoder_coder_node");		//ROS串口节点名称
    ros::NodeHandle nh("~");
    std::string portName;
    std::string pubname;
    int baud_rate;

    nh.param("serial_port", portName, std::string("/dev/ttyUSB0"));
    nh.param("baud_rate", baud_rate, 2500000);
    nh.param("pubname", pubname, std::string("benwake_tf"));
    nh.param("init_ecoder_data", xingt_ecoder::init_ecoder_data,217490.0);
    nh.param("init_theta", xingt_ecoder::init_theta,134.0);

    // ROS_INFO(portName);
    ros::Publisher pub_range = nh.advertise<xingt_msgs::encoder_coder>(pubname, 1000);
    xingt_msgs::encoder_coder xingtian_ecoder_msg;
    xingt_ecoder::zero_ecoder=  xingt_ecoder::init_ecoder_data
                                -pow(2,19)/360*xingt_ecoder::init_theta;
    // std::cout << "aaa"<< xingt_ecoder::zero_ecoder << " l     ";
    // std::cout << " "<< ecoder::zero_ecoder_right << "r        ";

    // pub_range.init_theta = xingt_ecoder::init_theta;
    //  创建一个serial类
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
    }
    else
    {
        return -1;
    }
	sp.write(command,1);
	// 指定循环的速率
	ros::Rate loop_rate(10);
    while(ros::ok())
    {
        ros::Duration(0.1).sleep();
        //获取缓冲区内的字节数
        size_t n = sp.available();
        if(n!=0)
        {
            uint8_t buffer[1024];
            //读出数据
            n = sp.read(buffer, n);
            // xingtian_ecoder_msg.ecoder = buffer;
            std::cout <<"   start   "<< std::hex << (n & 0xff) <<"  stop   "<< " ";
            for(int i=0; i<n; i++)
            {
                if(buffer[0] == 0x02 && buffer[1] == 0x00)
                {
                    xingtian_ecoder_msg.ecoder_data = (float)(buffer[4] << 16 | buffer[3] << 8 | buffer[2]);
                    pub_range.publish(xingtian_ecoder_msg);

                }
                //16进制的方式打印到屏幕
                std::cout << std::hex << (buffer[i] & 0xff) << " ";
            }
            std::cout << std::endl;
            sp.write(command,1);
            //把数据发送回去
            // sp.write(buffer, n);
        }
        loop_rate.sleep();
    }
    
    //关闭串口
    sp.close();
	return 0;
}