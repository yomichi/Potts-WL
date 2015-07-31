cmake_minimum_required(VERSION 2.8.0 FATAL_ERROR)
project(wanglandau)

# find ALPS Library
# find_package(ALPS REQUIRED PATHS ${ALPS_ROOT_DIR} $ENV{ALPS_HOME} NO_SYSTEM_ENVIRONMENT_PATH)
# message(STATUS "Found ALPS: ${ALPS_ROOT_DIR} (revision: ${ALPS_VERSION})")
# include(${ALPS_USE_FILE})

find_package(Boost 1.55 COMPONENTS program_options REQUIRED)
include_directories(${Boost_INCLUDE_DIR})

add_executable(potts potts.cpp wanglandau.cpp)
target_link_libraries(potts ${Boost_LIBRARIES})
