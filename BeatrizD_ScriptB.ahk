#Persistent

#SingleInstance Force

; Specify the title of the Chrome window you want to activate
chromeWindowTitle := "AutoHotKey"

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

; Navigate to search tab in banner (Press tab 5 times)
Loop, 5 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}
; Press enter to make selection
Send, {Enter}
Sleep, 1000

; Navigate to "English-Español" search bar (Press tab 8 times)
Loop, 8 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Paste term into search bar (Press Ctrl+V)
Send, ^v 

Sleep, 1000


; Press enter to execute search
Send, {Enter}

Sleep, 1000 

; Navigate back to first tab (Ctrl+Tab)
Send, ^{Tab}

Sleep, 1000

; Navigate cursor to next term by pressing down arrow
Send, {Down}

Sleep, 1000

; Copy next term in list (Press Ctrl+C)
Send, ^c


^x:: ; To stop script, press Ctrl+X
    ExitApp


; Exit the script
ExitApp

 