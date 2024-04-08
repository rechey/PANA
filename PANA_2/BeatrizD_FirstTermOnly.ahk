SetTitleMatchMode, 2 ; Match the title anywhere in the window title

; Check if Chrome is running
IfWinExist, Chrome ahk_exe chrome.exe
{
    ; Chrome is running, open a new window with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/EYmY-u0A32dLuHuoU3S8sEgBYJSoK_ex13oPHAtetvFHeA?e=ePaqr8&nav=MTVfezAwMDAwMDAwLTAwMDEtMDAwMC0wMDAwLTAwMDAwMDAwMDAwMH0"
    
    ; Wait for the new Chrome window to become active
    WinWaitActive, Chrome ahk_exe chrome.exe, , 5
    
    ; Maximize the active Chrome window
    IfWinActive
        WinMaximize
}
else
{
    ; Chrome is not running, start Chrome with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/EYmY-u0A32dLuHuoU3S8sEgBYJSoK_ex13oPHAtetvFHeA?e=ePaqr8&nav=MTVfezAwMDAwMDAwLTAwMDEtMDAwMC0wMDAwLTAwMDAwMDAwMDAwMH0"
    Sleep, 5000 ; Wait for Chrome to open
    WinMaximize ; Maximize the Chrome window
}

Sleep, 5000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 2000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c
Sleep, 500 ; Adjust the sleep time as needed

Sleep, 1000

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

; Navigate to "Search" tab (Press tab 5 times)
Loop, 5 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Press enter to make selection
Send, {Enter}

Sleep, 2000

; Navigate to "English-Español" search bar (Press tab 8 times)
Loop, 8 {
    Send, {Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

Sleep, 500

; Paste term into search bar (Press Ctrl+V)
Send, ^v 






^x:: ; To stop script, press Ctrl+X
    ExitApp


; Exit the script
ExitApp



