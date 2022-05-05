/*************************************************************************
* File Name: a.h
*
* 一般游戏循环流程：
*   实例一个[对象指针]，置为空
*   初始化，
*   进入游戏循环（while）
*       处理事件（捕捉事件
*       实时更新 update()
*       对画面进行渲染 render()
*
*   清理销毁内存。clean()
*
* Author: Lyon
* Mail: 786208769@qq.com
* Created Time: 二  4/26 22:35:02 2022
*************************************************************************/
#ifndef A_H
#define A_H
#include "SDL2/SDL_image.h"
/* "SDL2_image.h" 包含了SDL2库下的SDL.h */
#include <iostream>

class a
{
public:
    a() {}
    ~a() {}

    //初始化
    void init(const char* title, int xpos, int ypos, int weight, int heigh, bool fullscream);

    //捕捉事件
    void handleEvent();

    //用来游戏循环用的,一般直接在.h上直接写该函数实现。
    bool running();

    //渲染游戏
    void render();

    //一般实时刷新...
    void update();

    //清理销毁窗口，内存等。
    void clean();
    
    static SDL_Renderer* Render;

    static SDL_Event event;

private:
    /* int count;  //计数用的，与update（）配合，方便查看程序运行情况。 */
    bool isRunning; //while循环的判断条件。
    SDL_Window* Window;
};

#endif
