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
Sleep, 3000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
WinActivate, ahk_id %chromeWindowId%
Send, ^c
Sleep, 1000 ; Adjust the sleep time as needed

Sleep, 1000

; Navigate to Armarc
WinActivate, ahk_id %chromeWindowId%
Run, "https://armarcenlinea.com/web/pages/publico/index.php"

; Wait for the browser to open
Sleep, 2000 ; 

; Press Tab key twice (assuming username and password are pre-filled)
WinActivate, ahk_id %chromeWindowId%
Send, {Tab}{Tab}

; Press Enter key
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}

; Wait for the page to load (adjust sleep time accordingly)
Sleep, 2000

; Navigate to drop-down menu (Press shift+tab)
WinActivate, ahk_id %chromeWindowId%
Loop, 8 {
    Send, +{Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

; Select drop-down menu (Press enter)
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}


; Navigate down in drop-down menu (Press down arrow)
WinActivate, ahk_id %chromeWindowId%
Send, {Down}


; Select "Todo los Campos" (Press enter)
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}


; Navigate back to search bar (Press shift+tab)
WinActivate, ahk_id %chromeWindowId%
Send, +{Tab}

Sleep, 200

; Paste term into Armarc's search bar
WinActivate, ahk_id %chromeWindowId%
Send, ^v ; Ctrl+V will paste the term

Sleep, 500

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}

Sleep, 1000

; Open a new tab
WinActivate, ahk_id %chromeWindowId%
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500


; Navigate to Catálogo Colectivo de Autoridades Bibliográficas
WinActivate, ahk_id %chromeWindowId%
Send, http://www.bncatalogo.gob.cl/F/-/?func=scan-list&local_base=red10{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time


; Navigate cursor to dropdown menu by pressing tab
WinActivate, ahk_id %chromeWindowId%
Send, {Tab}
Sleep, 1000

; Expose drop-down menu by pressing enter
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}
Sleep, 500

; Navigate to the "Término en inglés" option in the drop-down menu (Press the down arrow key 7 times)
WinActivate, ahk_id %chromeWindowId%
Loop, 7 {
    Send, {Down} 
}
Sleep, 500


; Press Enter key
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}
Sleep, 500

; Press Shift+Tab
WinActivate, ahk_id %chromeWindowId%
Send, +{Tab}

Sleep, 1000

; Paste term into Catálogo Colectivo de Autoridades Bibliográficas's search bar (cursor should be on search bar)
WinActivate, ahk_id %chromeWindowId%
Send, ^v ; Ctrl+V will paste the term

; Press enter to execute search
WinActivate, ahk_id %chromeWindowId%
Send, {Enter}

Sleep, 2000


; Navigate to next tab, which should be back to the excel sheet tab
WinActivate, ahk_id %chromeWindowId%
Send, ^{PgDn} ; Ctrl+PageDn navigates to the next tab

Sleep, 500

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
