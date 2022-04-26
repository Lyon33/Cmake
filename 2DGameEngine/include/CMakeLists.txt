aux_source_directory(. DIR_LIB_SRCS)

set(SDL_DIR /opt/homebrew/Cellar/sdl2/2.0.20)

find_package(SDL2 REQUIRED QUIET)
include_directories(
    ${SDL_DIR}/include
    )
link_libraries(SDL2)

add_library(Mygamelib ${DIR_LIB_SRCS})
