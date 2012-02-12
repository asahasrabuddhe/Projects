/*WP01 - Hello Windows - 180112.1713*/

#include<windows.h>

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                   PSTR szCmdLine, int iCmdShow)
{
    MessageBox(NULL, TEXT("Hello, Windows!"), TEXT("Hello Message"), 0);
    return 0;
}
