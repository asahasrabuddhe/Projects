/*WP02 - Display Screen Size in a MessageBox 180112.2347*/

#include<windows.h>
#include<tchar.h>
#include<stdio.h>

int CDECL MessageBoxPrintf(TCHAR *, TCHAR *, ...);

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                   PSTR szCmdLine, int iCmdShow)
{
    int iCxScreen, iCyScreen;

    iCxScreen = GetSystemMetrics(SM_CXSCREEN);
    iCyScreen = GetSystemMetrics(SM_CYSCREEN);

    MessageBoxPrintf(TEXT("Screen Size"),
                     TEXT("The screen is %d pixels wide by %d pixels high"),
                     iCxScreen, iCyScreen);
    return 0;
}

int CDECL MessageBoxPrintf(TCHAR *szCaption, TCHAR *szFormat, ...)
{
    TCHAR szBuffer[1024];
    va_list pArgList;

    // The va_start macro (defined in STDARG.H) is usually equivalent to:
    // pArgList = (char *) &szFormat + sizeof(szFormat)
    va_start(pArgList, szFormat);

    //The last argument to wvsprintf points to the arguments

    _vsntprintf(szBuffer, sizeof (szBuffer) / sizeof (TCHAR),
                szFormat, pArgList);

    va_end(pArgList);

    return MessageBox(NULL, szBuffer, szCaption, 0);
}
