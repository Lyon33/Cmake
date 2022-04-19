cmake_minimum_required(VERSION 3.1.2)
project(CmakeTest VERSION 0.0.1)

set(CMAKE_CXX_COMPILER=llvm-g++)

set(CMAKE_CXX_STANDARD 17)      #C++ 17标准

#在当前目录下的bin文件夹下生成可执行文件。
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/./bin)

file(GLOB_RECURSE mains RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}"
                                 "${CMAKE_CURRENT_SOURCE_DIR}/./src/*.c"
                                 "${CMAKE_CURRENT_SOURCE_DIR}/./src/*.cpp")

foreach(mainfile IN LISTS mains)
    #获取生成的执行文件名，只是把后缀去掉，如test.cpp --> test
    get_filename_component(mainname ${mainfile} NAME_WE)
    add_executable(${mainname} ${mainfile})

endforeach()

