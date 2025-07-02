cmake_minimum_required(VERSION 3.10)
project(bsk_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

file(GLOB MSG_FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} "msg/*.msg")

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSG_FILES}
)

ament_package()
