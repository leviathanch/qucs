# Setup unit tests

project(tests CXX C)

cmake_minimum_required(VERSION 3.10.0)

include(${PROJECT_SOURCE_DIR}/../cmake/readMakeList.cmake)

# use top VERSION file
file(STRINGS ${PROJECT_SOURCE_DIR}/../VERSION QUCS_VERSION)
message(STATUS "Configuring ${PROJECT_NAME} (GUI): VERSION ${QUCS_VERSION}")

set(PROJECT_VERSION "${QUCS_VERSION}")

set(PROJECT_VENDOR "Qucs team. This program is licensed under the GNU GPL")
set(PROJECT_COPYRIGHT_YEAR "2014")
set(PROJECT_DOMAIN_FIRST "qucs")
set(PROJECT_DOMAIN_SECOND "org")

set(CMAKE_BUILD_TYPE Debug)

add_definitions(-DHAVE_CONFIG_H)

add_definitions(-DQUCS_TEST_DIR="${PROJECT_SOURCE_DIR}")

include_directories("${PROJECT_BINARY_DIR}")
include_directories("${PROJECT_BINARY_DIR}/..")
include_directories("${PROJECT_SOURCE_DIR}/../qucs")

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

set(QucsAppTest_SRCS QucsAppTest.cpp QucsAppTest.h)
add_library(QucsAppTest "${QucsAppTest_SRCS}")
target_link_libraries(QucsAppTest Qt::Test Qt::Core Qt::Gui Qt::Widgets Qt::Script Qt::PrintSupport Qt::Svg qucsschematic element QucsApp QucsFunctions)

set(SignalTests_SRCS SignalTests.cpp SignalTests.h)
add_executable(SignalTests ${SignalTests_SRCS})
target_link_libraries(SignalTests QucsAppTest)
add_test(NAME SignalTests COMMAND SignalTests)

set(ElementTests_SRCS ElementTests.cpp ElementTests.h)
add_executable(ElementTests ${ElementTests_SRCS})
target_link_libraries(ElementTests QucsAppTest)
add_test(NAME ElementTests COMMAND ElementTests)

set(ComponentTests_SRCS ComponentTests.cpp ComponentTests.h)
add_executable(ComponentTests ${ComponentTests_SRCS})
target_link_libraries(ComponentTests QucsAppTest)
add_test(NAME ComponentTests COMMAND ComponentTests)

set(SchematicTests_SRCS SchematicTests.cpp SchematicTests.h)
add_executable(SchematicTests ${SchematicTests_SRCS})
target_link_libraries(SchematicTests QucsAppTest)
add_test(NAME SchematicTests COMMAND SchematicTests)

set(NetlistTests_SRCS NetlistTests.cpp NetlistTests.h)
add_executable(NetlistTests ${NetlistTests_SRCS})
target_link_libraries(NetlistTests QucsAppTest)
add_test(NAME NetlistTests COMMAND NetlistTests)

set(DocumentTests_SRCS DocumentTests.cpp DocumentTests.h)
add_executable(DocumentTests ${DocumentTests_SRCS})
target_link_libraries(DocumentTests QucsAppTest)
add_test(NAME DocumentTests COMMAND DocumentTests)

readVariable(${PROJECT_SOURCE_DIR}/MakeList PRJ_TESTS PRJ_TESTS)
#message(STATUS "Got following PRJ_TESTS: ${PRJ_TESTS}")

#string(REGEX REPLACE ";" " " PRJ_TESTS "${PRJ_TESTS}")

set(check_commands)
foreach(project IN LISTS PRJ_TESTS)
    file(GLOB schematics "${PROJECT_SOURCE_DIR}/${project}/*.sch")
    foreach(schematic ${schematics})
        string(REPLACE "${PROJECT_SOURCE_DIR}" "${PROJECT_SOURCE_DIR}/ref" outfile ${schematic})
        string(REPLACE "prj/" "prj_" outfile ${outfile})
        # For compatibility this is commented for now until felix can fix his automake implementation too
        #string(REPLACE ".sch" "" outfile ${outfile})
        list(APPEND check_commands COMMAND ${PROJECT_BINARY_DIR}/../qucs/qucs --dump -i ${schematic} -o ${outfile}.sch)
        list(APPEND check_commands COMMAND ${PROJECT_BINARY_DIR}/../qucs/qucs --dump -i ${schematic} -o ${outfile}.vs)
    endforeach()
endforeach()

add_custom_target(update_refs ${check_commands})
