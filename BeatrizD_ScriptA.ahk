#SingleInstance Force

SetTitleMatchMode, 2 ; Match the title anywhere in the window title

; Check if Chrome is running
IfWinExist, Chrome ahk_exe chrome.exe
{
    ; Chrome is running, open a new window with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/Ealc7HtulcVKjaMe8BvCGkoBOty8w_TCkMTsRV0JULTjkw?e=55mBId"
    
    ; Wait for the new Chrome window to become active
    WinWaitActive, Chrome ahk_exe chrome.exe, , 5
    
    ; Maximize the active Chrome window
    IfWinActive
        WinMaximize
}
else
{
    ; Chrome is not running, start Chrome with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/Ealc7HtulcVKjaMe8BvCGkoBOty8w_TCkMTsRV0JULTjkw?e=55mBId"
    Sleep, 5000 ; Wait for Chrome to open
    WinMaximize ; Maximize the Chrome window
}

Sleep, 4000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 4000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c

Sleep, 3000

; Navigate to lcsh-es.org
Run, "https://lcsh-es.org/"

; Wait for the browser to open
Sleep, 2000 ; 

; Press Tab 9 times to sign in (*Important*: this assumes username and password are pre-filled)
Loop, 9 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Press enter to log in
Send, {Enter}

Sleep, 3000

; Navigate to "English-Español" search bar (Press tab 8 times)
Loop, 8 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Paste term into search bar (Press Ctrl+V)
Send, ^v 

Sleep, 1000

; Paste term into search bar (Ctrl+v)
Send, ^v

Sleep, 500

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



