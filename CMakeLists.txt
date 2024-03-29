cmake_minimum_required(VERSION 3.29)
# set(CMAKE_CXX_STANDARD 14)
project(ModuleMakerTest)

# Set the LLVM_DIR and CMAKE_PREFIX_PATH to locate LLVM
set(LLVM_DIR /usr/local/opt/llvm/)
set(CMAKE_PREFIX_PATH /usr/local/opt/llvm/)
# set(LLVM_DIR /path/to/llvm/installation/lib/cmake/llvm)
# set(CMAKE_PREFIX_PATH /path/to/llvm/installation)

# Find LLVM package
find_package(LLVM REQUIRED CONFIG)

# Include LLVM headers
include_directories(${LLVM_INCLUDE_DIRS})

# Add LLVM definitions
add_definitions(${LLVM_DEFINITIONS})

# Map LLVM components to libraries
llvm_map_components_to_libnames(llvm_libs core irreader)

# Set build type (you can adjust this as needed)
set(CMAKE_BUILD_TYPE Debug)

# Set installation prefix
set(CMAKE_INSTALL_PREFIX /usr/local)

# Set target architecture and deployment target
set(CMAKE_OSX_ARCHITECTURES x86_64)
set(CMAKE_OSX_DEPLOYMENT_TARGET 14.4)

# Set the macOS system root
set(CMAKE_OSX_SYSROOT /Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk)

# Add your executable target
add_executable(ModuleMakerTest src/ModuleMakerTest.cpp)

# Link LLVM libraries to your executable
target_link_libraries(ModuleMakerTest ${llvm_libs})

# Set executable output path
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
# set_target_properties(ModuleMakerTest PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)







####

# find_package(LLVM REQUIRED CONFIG)

# include_directories(${LLVM_INCLUDE_DIRS})
# add_definitions(${LLVM_DEFINITIONS})

# llvm_map_components_to_libnames(llvm_libs core irreader)

# add_executable(ModuleMakerTest /src/ModuleMakerTest.cpp)
# target_link_libraries(MyLLVMProgram ${llvm_libs})



########
# best try at the config before^:

# find_package(Clang REQUIRED)
# target_link_libraries(ModuleMakerTest PRIVATE Clang)

# project(ModuleMakerTest)

# depending on whether you're building an executable or library:
# add_executable(adder ModuleMakerTest.cpp)
# or 
## add_library(my_library source1.cpp source2.cpp)

# Executable Name: This refers to the specific file generated after compilation, the actual program you run. It can be descriptive, but doesn't necessarily need to directly reflect the entire project name.

# set(LLVM_INCLUDE_DIR "/usr/local/opt/llvm/")


#######



# options for building/linking other libs & env vars
# includePath()
# target_link_libraries(my_executable PRIVATE my_library) 
# install(TARGETS my_executable my_library DESTINATION bin)
# use()
# include_directories(/usr/local/opt/llvm/include)
# target_link_libraries(MyExecutable library1 library2)

# do i have any external libraries?
# //Target Configuration: Use 
# target_link_libraries(my_executable PRIVATE my_library) 
# // to link your executable against your library or other external libraries found by find_package().

# i think the auto build dir is sufficient
# // Install Targets: Use 
# install(TARGETS my_executable my_library DESTINATION bin)
# // to specify where to install executables and libraries during the build process.


# prev config:

# cmake_minimum_required(VERSION 3.23.3)
# project(ModuleMakerTest)

# set(LLVM_LINK_COMPONENTS
  # BitWriter
  # Core
  # Support
 # )

  # include_directories(/usr/local/opt/llvm/include)
  # include_directories(/usr/local/opt/build/include/)


# Add source files to the project
# add_executable(ModuleMakerTest ModuleMakerTest.cpp)

# Optionally specify additional include directories
# include_directories(path/to/includes)

# Optionally link against libraries
# target_link_libraries(MyExecutable library1 library2)

# Specify the installation destination for the executable
# install(TARGETS llvm-project DESTINATION bin)

