cmake_minimum_required(VERSION 3.16)

project(ipc)
set(CMAKE_CXX_STANDARD 17)
find_package(Qt6 REQUIRED COMPONENTS Core Gui)

set(SOURCES
    networkmessageprocessor.cpp
    buttonmessageprocessor.cpp
    buzzermessageprocessor.cpp
)

set(HEADERS
    networkmessageprocessor.h
    buttonmessageprocessor.h
    buzzermessageprocessor.h
)

add_library(${PROJECT_NAME} STATIC ${HEADERS} ${SOURCES})

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(${PROJECT_NAME} 
    zmq
    zmqpp
    Qt6::Core
    Qt6::Gui
)
