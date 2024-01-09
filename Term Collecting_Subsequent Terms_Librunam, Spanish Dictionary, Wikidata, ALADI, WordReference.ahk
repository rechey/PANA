#Persistent

; Specify the title of the Chrome window you want to activate
chromeWindowTitle := "PANA_WorkingList_NewTerms.xlsx - Google Chrome"

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
urlToNavigate := "https://autoridades.dgb.unam.mx:8443/F?func=find-b-0&local_base=MX011"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 500 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

; Wait for the browser to open
Sleep, 4000 ; 

; Select existing text that is in search bar (Press Ctrl+A)
Send, ^a

Sleep, 1000

; Paste term over existing text into Librunam's search bar in "Palabra o frase"
Send, ^v ; Ctrl+V will paste the term

Sleep, 1000

; Press enter to execute search
Send, {Enter}

Sleep, 500

; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

Sleep, 2000

; Specify the URL you want to navigate to
urlToNavigate := "https://www.spanishdict.com/"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 100 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

Sleep, 3000

; Paste term into Spanish Dictionary's search bar (cursor should be on search bar)
Send, ^v ; Ctrl+V will paste the term

Sleep, 500

; Press enter to execute search
Send, {Enter}

Sleep, 2000

; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

Sleep, 1000

; Specify the URL you want to navigate to
urlToNavigate := "https://www.wikidata.org/w/index.php?search"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 100 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

; Wait for the browser to open
Sleep, 2000 

; Paste term into Wikidata's search bar (cursor should be on search bar)
Send, ^v ; Ctrl+V will paste the term

; Press enter to execute search
Send, {Enter}

Sleep, 500


; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

; Specify the URL you want to navigate to
urlToNavigate := "https://biblio.aladi.org/cgi-bin/koha/opac-authorities-home.pl"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 100 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

; Wait for the browser to open and ALADI to load
Sleep, 3000 

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


; Navigate to next tab (Press Ctrl+Tab)
Send, ^{Tab}

; Specify the URL you want to navigate to
urlToNavigate := "https://www.wordreference.com/"

; Activate the Chrome window
WinActivate, ahk_exe chrome.exe

; Send Ctrl+L to focus on the address bar
Send, ^l
Sleep, 500 ; Wait for the address bar to be focused

; Type the URL and press Enter
Send, %urlToNavigate%{Enter}

; Wait for the browser to open
Sleep, 2000 

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 1000

; Press enter to execute search
Send, {Enter}

Sleep, 500

; Navigate back to first tab
Send, ^{Tab}

Sleep, 1000

; Press the down arrow key to proceed to next term in the list
Send, {Down} 

^x:: ; To stop script, press Ctrl+X
    ExitApp



; Exit the script
ExitApp



