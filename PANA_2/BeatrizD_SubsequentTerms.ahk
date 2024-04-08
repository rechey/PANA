#Persistent

; Specify the title of the Chrome window you want to activate
chromeWindowTitle := "PANA_WorkingList_NewTerms.xlsx - Google Chrome"

; Check if the Chrome window is running
IfWinExist, %chromeWindowTitle%
{
    ; Activate the Chrome window
    WinActivate
}
else
{
    MsgBox, Chrome window with title "%chromeWindowTitle%" not found.
}

Sleep, 4000

; Copy highlighted term (Press Ctrl+C)
Send, ^c

Sleep, 500

; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

; Specify the URL you want to navigate to
urlToNavigate := "https://lcsh-es.org/"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 500 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

; Wait for the browser to open
Sleep, 2000

 