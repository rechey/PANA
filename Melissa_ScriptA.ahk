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

Sleep, 5000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 2000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c
Sleep, 500 ; Adjust the sleep time as needed

Sleep, 1000

; Navigate to Armarc
Run, "https://armarcenlinea.com/web/pages/publico/index.php"

; Wait for the browser to open
Sleep, 2000 ; 

; Press Tab key twice (assuming username and password are pre-filled)
Send, {Tab}{Tab}

; Press Enter key
Send, {Enter}

; Wait for the page to load (adjust sleep time accordingly)
Sleep, 2000

; Navigate to drop-down menu (Press shift+tab)
Loop, 8 {
    Send, +{Tab}
    Sleep, 200 ; Adjust the sleep time as needed
}

; Select drop-down menu (Press enter)
Send, {Enter}


; Navigate down in drop-down menu (Press down arrow)
Send, {Down}


; Select "Todo los Campos" (Press enter)
Send, {Enter}


; Navigate back to search bar (Press shift+tab)
Send, +{Tab}

Sleep, 200

; Paste term into Armarc's search bar
Send, ^v ; Ctrl+V will paste the term

Sleep, 500

; Press enter to execute search
Send, {Enter}

Sleep, 1000

; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500


; Navigate to Catálogo Colectivo de Autoridades Bibliográficas
Send, http://www.bncatalogo.gob.cl/F/-/?func=scan-list&local_base=red10{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time


; Navigate cursor to dropdown menu by pressing tab
Send, {Tab}
Sleep, 1000

; Expose drop-down menu by pressing enter
Send, {Enter}
Sleep, 500

; Navigate to the "Término en inglés" option in the drop-down menu (Press the down arrow key 7 times)
Loop, 7 {
    Send, {Down} 
}
Sleep, 500


; Press Enter key
Send, {Enter}
Sleep, 500

; Press Shift+Tab
Send, +{Tab}

Sleep, 1000

; Paste term into Catálogo Colectivo de Autoridades Bibliográficas's search bar (cursor should be on search bar)
Send, ^v ; Ctrl+V will paste the term

; Press enter to execute search
Send, {Enter}

Sleep, 1000


; Navigate to next tab, which should be back to the excel sheet tab
Send, ^{PgDn} ; Ctrl+PageDn navigates to the next tab

Sleep, 500

; Navigate cursor to next term by pressing down arrow
Send, {Down}

Sleep, 1000

; Copy next term in list (Press Ctrl+C)
Send, ^c

^x:: ; To stop script, press Ctrl+X
    ExitApp


; Exit the script
ExitApp
