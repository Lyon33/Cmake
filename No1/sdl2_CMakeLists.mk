🍺🍺以下是在终端下，编写运行SDL2的demo
sp1: brew install sdl2;
	 brew install pkg-cofig;
sp2: 编写CMakeLists.txt
	notice: find_package(SDL2 REQUIRED QUIET) 
			include_directories(
				/opt/homebrew/Cellar/sdl2/2.0.20/include
			)

			link_libraries(SDL2)
			...

			target_link_libraries(目标名
					${SDL2_LIBRARIES})
🍺🍺
🍺🍺
🍺🍺
🍺🍺
🍺🍺
🍺🍺
🍺🍺
🍺🍺
