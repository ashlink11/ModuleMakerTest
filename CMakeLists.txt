cmake_minimum_required(VERSION 3.29)
set(CMAKE_CXX_STANDARD 20)
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")
endif()

project(ModuleMakerTest)

set(LLVM_DIR /usr/local/Cellar/llvm/)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})

add_definitions(${LLVM_DEFINITIONS})

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_OSX_ARCHITECTURES x86_64)
set(CMAKE_OSX_DEPLOYMENT_TARGET 14.4)
set(CMAKE_OSX_SYSROOT /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk)

add_executable(ModuleMakerTest src/ModuleMakerTest.cpp)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

target_link_libraries(ModuleMakerTest PRIVATE LLVMCore LLVMSupport LLVMBitWriter)





