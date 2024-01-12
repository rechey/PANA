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

Sleep, 3000

; Select the first term (Press Ctrl+Home)
Send, ^{Home}
Sleep, 2000 ; Adjust the sleep time as needed

; Copy the term (Press Ctrl+C)
Send, ^c
Sleep, 500 ; Adjust the sleep time as needed


; Open Chrome with the URL in the first tab
Run, "C:\Users\recheguren\AppData\Local\Google\Chrome\Application\chrome.exe" "https://www.dgb.unam.mx/index.php/catalogos/catalogos-de-autoridades/catalogo-de-autoridades-librunam"

; Wait for the page to load (adjust sleep time accordingly)
Sleep, 2000

; Navigate to drop-down menu (Press tab)
Loop, 20 {
    Send,{Tab}
    Sleep, 100 ; Adjust the sleep time as needed
}

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 500

; Press enter to execute search
Send, {Enter}

Sleep, 500

; Navigate back one tab (Press Ctrl+PgUp)
Send, ^{PgUp}

; Close tab (Ctrl+W)
Send, ^w

Sleep, 500

; Navigate forward one tab (Press Ctrl+PgDn)
Send, ^{PgDn}

Sleep, 500

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
Sleep, 500

; Navigate to Wikidata Search Page
Send, https://www.wikidata.org/w/index.php?search{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 1000

; Press enter to execute search
Send, {Enter}

; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 1000

; Navigate to Biblioteca de la ALADI
Send, https://biblio.aladi.org/cgi-bin/koha/opac-authorities-home.pl{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time

Sleep, 2000

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

; Navigate to WordReference
Send, https://www.wordreference.com/{Enter}
Sleep, 2000 ; Adjust this sleep time based on the page loading time

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 1000

; Press enter to execute search
Send, {Enter}

; Navigate to next tab, which should be back to the excel sheet tab
Send, ^{PgDn} ; Ctrl+PageDn navigates to the next tab

Sleep, 500

; Navigate cursor to next term by pressing down arrow
Send, {Down}

Sleep, 1000

; Copy next term in list (Press Ctrl+C)
Send, ^c


; Exit the script
ExitApp

^x:: ; To stop script, press Ctrl+X
    ExitApp

