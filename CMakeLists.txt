find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

llvm_map_components_to_libnames(llvm_libs core irreader)

add_executable(MyLLVMProgram main.cpp)
target_link_libraries(MyLLVMProgram ${llvm_libs})



########
# best try at the config before^:

# find_package(Clang REQUIRED)
# target_link_libraries(ModuleMakerTest PRIVATE Clang)

# project(ModuleMakerTest)

# depending on whether you're building an executable or library:
add_executable(adder ModuleMakerTest.cpp)
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

