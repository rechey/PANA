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
urlToNavigate := "https://armarcenlinea.com/web/pages/publico/index.php"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 100 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

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

; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

Sleep, 500

; Specify the URL you want to navigate to
urlToNavigate := "http://www.bncatalogo.gob.cl/F/-/?func=scan-list&local_base=red10"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 100 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

Sleep, 3000


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



; Navigate to the next tab
Send, ^{Tab}

Sleep, 500

; Press the down arrow key to proceed to next term in the list
Send, {Down} 






^x:: ; To stop script, press Ctrl+X
    ExitApp



; Exit the script
ExitApp
