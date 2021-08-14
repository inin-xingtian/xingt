cmake_minimum_required(VERSION 3.0.2)
project(press_sensor)


FILE(GLOB SRC_LIST "${PROJECT_SOURCE_DIR}/src/MyClipX.cpp")
INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/include)

LINK_DIRECTORIES(${PROJECT_SOURCE_DIR}/lib)
LINK_LIBRARIES(${PROJECT_SOURCE_DIR}/lib) 

find_package(catkin REQUIRED COMPONENTS
  roscpp
  xingt_msgs
)

catkin_package(
 INCLUDE_DIRS include
 LIBRARIES press_sensor
 CATKIN_DEPENDS roscpp xingt_msgs
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(press_talker src/press_sensor.cpp)
TARGET_LINK_LIBRARIES(press_talker ${catkin_LIBRARIES} -lClipXLinuxApi -lpthread)

# add_executable(press_listener src/listener.cpp)
# target_link_libraries(press_listener ${catkin_LIBRARIES})

