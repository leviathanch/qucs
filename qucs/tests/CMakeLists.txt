# Setup unit tests

project(tests CXX C)
cmake_minimum_required(VERSION 3.10.0)

# use top VERSION file
file(STRINGS ${PROJECT_SOURCE_DIR}/../../VERSION QUCS_VERSION)
message(STATUS "Configuring ${PROJECT_NAME} (GUI): VERSION ${QUCS_VERSION}")

set(PROJECT_VERSION "${QUCS_VERSION}")

set(PROJECT_VENDOR "Qucs team. This program is licensed under the GNU GPL")
set(PROJECT_COPYRIGHT_YEAR "2014")
set(PROJECT_DOMAIN_FIRST "qucs")
set(PROJECT_DOMAIN_SECOND "org")

set(CMAKE_BUILD_TYPE Debug)

add_definitions(-DHAVE_CONFIG_H)

add_definitions(-DQUCS_TEST_DIR="${PROJECT_SOURCE_DIR}")

# configure the header config.h
configure_file("${PROJECT_SOURCE_DIR}/../../config.h.cmake"
               "${PROJECT_BINARY_DIR}/../config.h")

include_directories("${PROJECT_BINARY_DIR}" "${PROJECT_SOURCE_DIR}/..")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall ") # enable warning level
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x ") # enable C++11

# flag not available in mingw 4.8.2, MSVC10
if(NOT WIN32)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated-register ")
endif()

find_package(Qt5 COMPONENTS Gui Svg Test Script PrintSupport REQUIRED)

add_definitions(${QT_DEFINITIONS})

# run moc when necessary
set(CMAKE_AUTOMOC ON)

# moc files are generated in the binary dir look there for includes
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(element_SRCS "element.cpp")
add_library(element "${element_SRCS}")
target_link_libraries(element Qt::Test Qt::Core Qt::Gui Qt::Widgets Qt::Script Qt::PrintSupport Qt::Svg)

#set(geometry0_SRCS "geometry0.cpp")
#add_library(geometry0 "${geometry0_SRCS}")

set(helloworld_SRCS "helloworld.cpp")
add_library(helloworld "${helloworld_SRCS}")

#set(model0_SRCS "model0.cpp")
#add_library(model0 "${model0_SRCS}")

#set(model1_SRCS "model1.cpp")
#add_library(model1 "${model1_SRCS}")

#set(next_idx_SRCS "next_idx.cpp")
#add_library(next_idx "${next_idx_SRCS}")

#set(place0_SRCS "place0.cpp")
#add_library(place0 "${place0_SRCS}")

#set(wire0_SRCS "wire0.cpp")
#add_library(wire0 "${wire0_SRCS}")

#set(wire1_SRCS "wire1.cpp")
#add_library(wire1 "${wire1_SRCS}")

set(ElementTests_SRCS ElementTests.cpp)
add_executable(ElementTests ${ElementTests_SRCS})
target_link_libraries(ElementTests Qt::Test Qt::Core Qt::Gui Qt::Widgets Qt::Script Qt::PrintSupport Qt::Svg qucsschematic element)
add_test(NAME ElementTests COMMAND ElementTests)

set(ComponentTests_SRCS ComponentTests.cpp)
add_executable(ComponentTests ${ComponentTests_SRCS})
target_link_libraries(ComponentTests Qt::Test Qt::Core Qt::Gui Qt::Widgets Qt::Script Qt::PrintSupport Qt::Svg qucsschematic)
add_test(NAME ComponentTests COMMAND ComponentTests)

set(SchematicTests_SRCS SchematicTests.cpp SchematicTests.h)
add_executable(SchematicTests ${SchematicTests_SRCS})
target_link_libraries(SchematicTests Qt::Test Qt::Core Qt::Gui Qt::Widgets Qt::Script Qt::PrintSupport Qt::Svg qucsschematic)
add_test(NAME SchematicTests COMMAND SchematicTests)

add_custom_command(TARGET SchematicTests COMMENT "Run tests" POST_BUILD COMMAND SchematicTests)
