cmake_minimum_required(VERSION 3.10)
project(dua_hardware_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(action_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(dua_common_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

set(ACTION_DIR "${CMAKE_CURRENT_SOURCE_DIR}/action")
file(GLOB ACTION_FILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "${ACTION_DIR}/*.action")

set(MSG_DIR "${CMAKE_CURRENT_SOURCE_DIR}/msg")
file(GLOB MSG_FILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "${MSG_DIR}/*.msg")

set(SRV_DIR "${CMAKE_CURRENT_SOURCE_DIR}/srv")
file(GLOB SRV_FILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "${SRV_DIR}/*.srv")

rosidl_generate_interfaces(${PROJECT_NAME}
  ${ACTION_FILES}
  ${MSG_FILES}
  ${SRV_FILES}
  DEPENDENCIES dua_common_interfaces geometry_msgs std_msgs)

ament_export_dependencies(
  action_msgs
  builtin_interfaces
  dua_common_interfaces
  geometry_msgs
  std_msgs)

ament_package()
