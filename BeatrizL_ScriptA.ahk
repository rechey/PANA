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

Sleep, 3000

; Select the first term (Press Ctrl+Home)
WinActivate, ahk_id %chromeWindowId%
Send, ^{Home}
Sleep, 3000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
WinActivate, ahk_id %chromeWindowId%
Send, ^c
Sleep, 3000 ; Adjust the sleep time as needed

; Navigate to Librunam
WinActivate, ahk_id %chromeWindowId%
Run, "https://autoridades.dgb.unam.mx:8443/F?func=find-b-0&local_base=MX011"
Sleep, 2000 ; Wait for the page to load (adjust sleep time accordingly)

; Select all (Press Ctrl+A)
WinActivate, ahk_id %chromeWindowId%
Send, ^a
Sleep, 1000

; Delete content from previous search (The keyword from a previous search may populate)
WinActivate, ahk_id %chromeWindowId%
Send, {Delete}
Sleep, 1000

; Paste the term into the search bar (Press Ctrl+V)
WinActivate, ahk_id %chromeWindowId%
Send, ^v
Sleep, 2000

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}
Sleep, 1000

; Open a new tab
WinActivate, ahk_id %chromeWindowId%
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500

; Navigate to Spanish Dictionary
WinActivate, ahk_id %chromeWindowId%
Send, https://www.spanishdict.com/{Enter}
Sleep, 2000 ; Wait for the page to load (adjust sleep time accordingly)

; Press escape - This is to close any ads that occasionally pop up on Spanish Dictionary ; Ctrl + Alt + E
WinActivate, ahk_id %chromeWindowId%
Send, {Esc}
Sleep, 500

; Paste the term into the search bar (Press Ctrl+V)
WinActivate, ahk_id %chromeWindowId%
Send, ^v
Sleep, 1000

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}
Sleep, 1000

; Open a new tab
WinActivate, ahk_id %chromeWindowId%
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500

; Navigate to Biblioteca de la ALADI
WinActivate, ahk_id %chromeWindowId%
Send, https://biblio.aladi.org/cgi-bin/koha/opac-authorities-home.pl{Enter}
Sleep, 3000 ; Wait for the page to load (adjust sleep time accordingly)

; Navigate to drop-down menu (Press shift+tab 7 times)
WinActivate, ahk_id %chromeWindowId%
Loop, 7 {
    Send, +{Tab}
    Sleep, 100 ; Adjust the sleep time as needed
}
Sleep, 1000

; Paste the term into the "Término(s):" search bar (Press Ctrl+V)
WinActivate, ahk_id %chromeWindowId%
Send, ^v
Sleep, 1000

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}
Sleep, 1000

; Navigate to next tab, which should be back to the excel sheet tab
WinActivate, ahk_id %chromeWindowId%
Send, ^{PgDn} ; Ctrl+PageDn navigates to the next tab
Sleep, 2000

; Navigate cursor to next term by pressing down arrow
WinActivate, ahk_id %chromeWindowId%
Send, {Down}
Sleep, 1000

; Copy next term in list (Press Ctrl+C)
WinActivate, ahk_id %chromeWindowId%
Send, ^c

; Exit the script
ExitApp

^x:: ; To stop script, press Ctrl+X
    ExitApp
