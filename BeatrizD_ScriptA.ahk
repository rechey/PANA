#SingleInstance Force
SetTitleMatchMode, 2 ; Match the title anywhere in the window title

; Declare variable for storing the window ID
global chromeWindowId := ""

; Function to open a URL in a new Chrome window and store the window ID
OpenChromeWindow(url) {
    global chromeWindowId
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "%url%"
    Sleep, 5000 ; Wait for Chrome to open
    WinGet, chromeWindowId, ID, ahk_exe chrome.exe
    WinActivate, ahk_id %chromeWindowId%
    WinMaximize, ahk_id %chromeWindowId%
}

; Open the first URL and store the window ID
OpenChromeWindow("https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/Ealc7HtulcVKjaMe8BvCGkoBOty8w_TCkMTsRV0JULTjkw?e=55mBId")

Sleep, 2000

; Select the first term (Press Ctrl+Home)
WinActivate, ahk_id %chromeWindowId%
Send, ^{Home}
Sleep, 4000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
WinActivate, ahk_id %chromeWindowId%
Send, ^c

Sleep, 3000

; Navigate to lcsh-es.org
WinActivate, ahk_id %chromeWindowId%
Run, "https://lcsh-es.org/"

; Wait for the browser to open
Sleep, 2000 ; 

; Press Tab 9 times to sign in (*Important*: this assumes username and password are pre-filled)
WinActivate, ahk_id %chromeWindowId%
Loop, 9 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Press enter to log in
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}

Sleep, 3000

; Navigate to "English-Español" search bar (Press tab 8 times)
WinActivate, ahk_id %chromeWindowId%
Loop, 8 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Paste term into search bar (Press Ctrl+V)
WinActivate, ahk_id %chromeWindowId%
Send, ^v 

Sleep, 500

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}

Sleep, 1000 

; Navigate back to first tab (Ctrl+Tab)
WinActivate, ahk_id %chromeWindowId%
Send, ^{Tab}

Sleep, 1000

; Navigate cursor to next term by pressing down arrow
WinActivate, ahk_id %chromeWindowId%
Send, {Down}

Sleep, 1000

; Copy next term in list (Press Ctrl+C)
WinActivate, ahk_id %chromeWindowId%
Send, ^c

^x:: ; To stop script, press Ctrl+X
    ExitApp


; Exit the script
ExitApp



