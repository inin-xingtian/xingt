#include <TF03.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "benwake_tf_node");
  ros::NodeHandle nh("~");
  std::string portName;
  std::string pubname;
  int baud_rate;
  xingt_benewake::TF03 *tf03_obj;

  nh.param("serial_port", portName, std::string("/dev/ttyUSB0"));
  nh.param("baud_rate", baud_rate, 115200);
  nh.param("pubname", pubname, std::string("benwake_tf"));


  tf03_obj = new xingt_benewake::TF03(portName, baud_rate);
  ros::Publisher pub_range = nh.advertise<xingt_msgs::benwake_tf>(pubname, 1000, true);
  xingt_msgs::benwake_tf TF03_xingtian;
  TF03_xingtian.tf_serial_port = portName;
  TF03_xingtian.tf_baud_rate = baud_rate;
  float dist = 0;
  ROS_INFO_STREAM("Start processing ...");

  while(ros::master::check() && ros::ok())
  // while(ros::ok())
  {
    ros::spinOnce();
    dist = tf03_obj->getDist();
    if(dist > 0)
    {
      TF03_xingtian.tf_dist = dist;
      pub_range.publish(TF03_xingtian);
      ROS_INFO_STREAM("im ok  processing ...");
    }
    else if(dist == -1.0)
    {
      ROS_ERROR_STREAM("Failed to read data. TF02 ros node stopped!");
      break;
    }
    else if(dist == 0.0)
    {
      ROS_ERROR_STREAM("Data validation error!");
    }
  }

  tf03_obj->closePort();
}
