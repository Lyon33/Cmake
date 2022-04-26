cmake_minimum_required(VERSION 3.13)

project(sdl2_game)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(include)

aux_source_directory(src DIR_SRCS)

#调试 Debug or Release
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall")

set(SDL_DIR /opt/homebrew/Cellar/sdl2/2.0.20)

find_package(SDL2 REQUIRED QUIET)
# find_package(SDL2 REQUIRED)
include_directories(
    ${SDL_DIR}/include
    include/
    )
# link_libraries(SDL2)

set(EXECUTABLE_OUTPUT_PATH bin)

add_executable(${PROJECT_NAME} ${DIR_SRCS})

# target_include_directories(${PROJECT_NAME} PUBLIC include)

target_link_libraries(${PROJECT_NAME}  
    ${SDL2_LIBRARIES} 
    Mygamelib
    )
