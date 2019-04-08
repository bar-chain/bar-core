# Install script for directory: /media/sf_extendfs/bar-core/libraries/net

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/sf_extendfs/bar-core/libraries/net/libgraphene_net.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/graphene/net" TYPE FILE FILES
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/config.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/core_messages.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/exceptions.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/message.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/message_oriented_connection.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/node.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/peer_connection.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/peer_database.hpp"
    "/media/sf_extendfs/bar-core/libraries/net/include/graphene/net/stcp_socket.hpp"
    )
endif()

