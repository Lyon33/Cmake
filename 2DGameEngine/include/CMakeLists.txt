aux_source_directory(. DIR_LIB_SRCS)

set(SDL_DIR /opt/homebrew/Cellar/sdl2/2.0.20)

set(SDL_IMG_DIR /opt/homebrew/Cellar/sdl2_image/2.0.5)

set(ECS /Users/lyon_z/workspace/test/2DGameEngine/include)

# find_package(SDL2 REQUIRED QUIET)

# find_library(NAME SDL2_image REQUIRED)

include_directories(
    ${SDL_DIR}/include
    ${SDL_DIR}/include/SDL2
    ${SDL_IMG_DIR}/include
    ${ECS}
    )
# link_libraries(SDL2_image)

add_library(Mygamelib ${DIR_LIB_SRCS})
