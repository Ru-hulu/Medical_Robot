修改costmap_2D中对于激光雷达数据的处理
void ObstacleLayer::laserScanValidInfCallback(const sensor_msgs::LaserScanConstPtr& raw_message,
                                              const boost::shared_ptr<ObservationBuffer>& buffer)
{
  // Filter positive infinities ("Inf"s) to max_range.
  float epsilon = 0.0001;  // a tenth of a millimeter
  sensor_msgs::LaserScan message = *raw_message;
  for (size_t i = 0; i < message.ranges.size(); i++)
  {
    float range = message.ranges[ i ];
    // /修改该地方，因为我的雷达没数据时，返回零值，所以判断当距离等于时，作为无穷远点来处理。
   // if (!std::isfinite(range) && range > 0)  原始代码
    if ((!std::isfinite(range) && range > 0) || (range == 0.0))
    {
      message.ranges[ i ] = message.range_max - epsilon;
    }
  }
                        
原文链接：https://blog.csdn.net/xinmei4275/article/details/88760505
