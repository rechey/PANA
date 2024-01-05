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

Sleep 5000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 2000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c
Sleep, 500 ; Adjust the sleep time as needed


; Open Chrome with the URL in the first tab
Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" "https://lembdigital.ddns.net/lemb/"

Sleep, 4000 ; Adjust this sleep time based on the page loading time

; Press Tab key twice (assuming username and password are pre-filled)
Send, {Tab}{Tab}

; Press Enter key
Send, {Enter}

; Wait for the page to load (adjust sleep time accordingly)
Sleep, 4000

; Press Tab key twice (Highlight "Find in LEMB")
Send, {Tab}{Tab}

; Select "Find in LEMB" tab
Send, {Enter}

; Wait for page to load (adjust sleep time accordingly)
Sleep, 2000

; Paste term into Lemb's search bar (cursor should already be in place)
Send, ^v ; Ctrl+V will paste the term

Sleep, 2000

; Navigate to dropdown menu and select "850 English text" (Press shift+tab)
Send, +{Tab}

; Navigate to dropdown menu and select "850 English text" (Press enter)
Send, {Enter}

Sleep, 500

; Navigate to dropdown menu and select "850 English text" (Press down arrow x 4)
Loop, 4 {
    Send, {Down}
    Sleep, 100 ; Adjust the sleep time as needed
}

Sleep, 500

; Navigate to dropdown menu and select "850 English text" (Press enter)
Send, {Enter}

Sleep, 500

; Navigate back to seach bar (Press shift+tab)
Send, +{Tab}

Sleep 500

; Navigate back to search bar (Press down arrow x 5)
Loop, 5 {
    Send, {Down}
    Sleep, 500 ; Adjust the sleep time as needed
}

; Navigate back to seach bar (Press enter)
Send, {Enter}

Sleep, 1000
