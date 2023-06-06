cmake_minimum_required(VERSION 3.0)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules")

set(CMAKE_CXX_STANDARD 14)

#find_package(OpenCL REQUIRED)
#find_package(XRT REQUIRED)
find_package(OpenMP)

#if(NOT XRT_FOUND)
#  MESSAGE(FATAL_ERROR "XRT not found, please source XRT setup script before building")
#endif()

add_subdirectory (preprocess)

#if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/pagerank.hw.xclbin")
#  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/hw_src/alveo_examples.xclbin ${CMAKE_CURRENT_BINARY_DIR}/alveo_examples.xclbin COPYONLY)
#else()
#  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/prebuilt/alveo_examples_u200.xclbin ${CMAKE_CURRENT_BINARY_DIR}/alveo_examples.xclbin COPYONLY)
#endif()

# Library of utility functions common to all applications
#add_library(example_utils STATIC
#  sw_src/event_timer.cpp
#  sw_src/xilinx_ocl_helper.cpp
#)

