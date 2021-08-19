#include <ros/ros.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <string>
#include <xingt_msgs/benwake_tf.h>

namespace xingt_benewake
{
  class TF03
  {
    public:
      TF03(std::string _name, int _baudRate);
      ~TF03(){};
      float getDist();
      void closePort();

      unsigned char dataBuf[7];
      // struct tf03_msgs{
      //   std::string  tf_name;
      //   std::string  tf_serial_port;
      //   int   tf_baud_rate;
      //   float tf_dist;
      // };
        

    private:
      std::string portName_;
      int baudRate_;
      int serial_;

      bool readData(unsigned char *_buf, int _nRead);
  };
}
