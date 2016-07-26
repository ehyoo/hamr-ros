# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hamr_interface: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ihamr_interface:/home/modlab/Documents/hamr-ros/src/hamr_interface/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hamr_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg" NAME_WE)
add_custom_target(_hamr_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hamr_interface" "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg" ""
)

get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg" NAME_WE)
add_custom_target(_hamr_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hamr_interface" "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg" "hamr_interface/MotorStatus"
)

get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg" NAME_WE)
add_custom_target(_hamr_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hamr_interface" "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg" ""
)

get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg" NAME_WE)
add_custom_target(_hamr_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hamr_interface" "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg" ""
)

get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg" NAME_WE)
add_custom_target(_hamr_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hamr_interface" "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
)
_generate_msg_cpp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
)
_generate_msg_cpp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
)
_generate_msg_cpp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
)
_generate_msg_cpp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(hamr_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hamr_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hamr_interface_generate_messages hamr_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_cpp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_cpp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_cpp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_cpp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_cpp _hamr_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hamr_interface_gencpp)
add_dependencies(hamr_interface_gencpp hamr_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hamr_interface_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
)
_generate_msg_lisp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
)
_generate_msg_lisp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
)
_generate_msg_lisp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
)
_generate_msg_lisp(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(hamr_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hamr_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hamr_interface_generate_messages hamr_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_lisp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_lisp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_lisp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_lisp _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_lisp _hamr_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hamr_interface_genlisp)
add_dependencies(hamr_interface_genlisp hamr_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hamr_interface_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
)
_generate_msg_py(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
)
_generate_msg_py(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
)
_generate_msg_py(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
)
_generate_msg_py(hamr_interface
  "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
)

### Generating Services

### Generating Module File
_generate_module_py(hamr_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hamr_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hamr_interface_generate_messages hamr_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/MotorStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_py _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_py _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HoloStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_py _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/VelocityStatus.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_py _hamr_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/modlab/Documents/hamr-ros/src/hamr_interface/msg/HamrCommand.msg" NAME_WE)
add_dependencies(hamr_interface_generate_messages_py _hamr_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hamr_interface_genpy)
add_dependencies(hamr_interface_genpy hamr_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hamr_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hamr_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hamr_interface_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hamr_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hamr_interface_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hamr_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hamr_interface_generate_messages_py std_msgs_generate_messages_py)
