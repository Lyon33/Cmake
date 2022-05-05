cmake_minimum_required(VERSION 3.13)

project(sdl2_game)

set(CMAKE_CXX_STANDARD 17)

# add_subdirectory(include)

aux_source_directory(src DIR_SRCS)

aux_source_directory(include INC_SRCS)

#调试 Debug or Release
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall")

set(SDL_DIR /opt/homebrew/Cellar/sdl2/2.0.20)

set(SDL_IMG_DIR /opt/homebrew/Cellar/sdl2_image/2.0.5)

find_package(SDL2 REQUIRED QUIET)

find_library(NAME SDL2_image REQUIRED)

link_libraries(SDL2_image)
#一直无法找到SDL2_image这个库，我是把它们复制到sdl2的库目录下，才make通过的....
#这条语句一定得加，不如make不过，还是报Undefined symbols for architecture arm64: 
# "_IMG_Load", referenced from: xxx的类似的错误，说IMG_Load()函数未定义

include_directories(
    ${SDL_DIR}/include
    ${SDL_DIR}/include/SDL2
    ${SDL_IMG_DIR}/include
    include/
    )

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# add_executable(${PROJECT_NAME} ${DIR_SRCS} {PROJECT_SOURCE_DIR}/include/a.h ${PROJECT_SOURCE_DIR}/include/a.cpp)
add_executable(${PROJECT_NAME} ${DIR_SRCS} ${INC_SRCS})

target_link_libraries(${PROJECT_NAME}  
    ${SDL2_LIBRARIES} 
    # Mygamelib
    )

