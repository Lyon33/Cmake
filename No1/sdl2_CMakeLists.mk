ðºðºä»¥ä¸æ¯å¨ç»ç«¯ä¸ï¼ç¼åè¿è¡SDL2çdemo
sp1: brew install sdl2;
	 brew install pkg-cofig;
sp2: ç¼åCMakeLists.txt
	notice: find_package(SDL2 REQUIRED QUIET) 
			include_directories(
				/opt/homebrew/Cellar/sdl2/2.0.20/include
			)

			link_libraries(SDL2)
			...

			target_link_libraries(ç®æ å
					${SDL2_LIBRARIES})
ðºðº
ðºðº
ðºðº
ðºðº
ðºðº
ðºðº
ðºðº
ðºðº
