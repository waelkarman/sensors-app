cmake_minimum_required(VERSION 3.16)

project(sensor-app)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick)

set(SOURCES
    main.qrc
    main.cpp
)

set(HEADERS)

qt_add_executable(${PROJECT_NAME} ${HEADERS} ${SOURCES})

add_subdirectory(ipc)

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(${PROJECT_NAME} PUBLIC
    ipc
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
