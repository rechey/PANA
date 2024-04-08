SetTitleMatchMode, 2 ; Match the title anywhere in the window title

; Check if Chrome is running
IfWinExist, Chrome ahk_exe chrome.exe
{
    ; Chrome is running, open a new window with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/ERF6eFqDeLVDuIfF3wZogGoBj5ogX7BmtR_AfeiZrWsqJA?e=84t0Go"
    
    ; Wait for the new Chrome window to become active
    WinWaitActive, Chrome ahk_exe chrome.exe, , 5
    
    ; Maximize the active Chrome window
    IfWinActive
        WinMaximize
}
else
{
    ; Chrome is not running, start Chrome with the specified URL
    Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" --new-window "https://uflorida-my.sharepoint.com/:x:/g/personal/recheguren_ufl_edu/ERF6eFqDeLVDuIfF3wZogGoBj5ogX7BmtR_AfeiZrWsqJA?e=84t0Go"
    Sleep, 5000 ; Wait for Chrome to open
    WinMaximize ; Maximize the Chrome window
}

Sleep, 3000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 2000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c
Sleep, 500 ; Adjust the sleep time as needed


; Navigate to Librunam
Run, "https://autoridades.dgb.unam.mx:8443/F?func=find-b-0&local_base=MX011"

; Wait for the page to load (adjust sleep time accordingly)
Sleep, 3000

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 2000

; Press enter to execute search
Send, {Enter}

Sleep, 1000


; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500

; Navigate to Spanish Dictionary
Send, https://www.spanishdict.com/{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 1000

; Press enter to execute search
Send, {Enter}

; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 1000

; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500

; Navigate to Biblioteca de la ALADI
Send, https://biblio.aladi.org/cgi-bin/koha/opac-authorities-home.pl{Enter}
Sleep, 4000 


; Navigate to drop-down menu (Press shift+tab 7 times)
Loop, 7 {
    Send, +{Tab}
    Sleep, 100 ; Adjust the sleep time as needed
}

Sleep, 1000

; Paste the term into the "Término(s):" search bar (Press Ctrl+V)
Send, ^v
Sleep, 1000

; Press enter to execute search
Send, {Enter}

; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 1000


; Navigate to next tab, which should be back to the excel sheet tab
Send, ^{PgDn} ; Ctrl+PageDn navigates to the next tab

Sleep, 2000

; Navigate cursor to next term by pressing down arrow
Send, {Down}

Sleep, 1000

; Copy next term in list (Press Ctrl+C)
Send, ^c


; Exit the script
ExitApp

^x:: ; To stop script, press Ctrl+X
    ExitApp

