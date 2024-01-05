; Open a new tab
Send, ^t ; Ctrl+T to open a new tab
Sleep, 500

; Navigate to Biblioteca Nacional Mariano Moreno Catálogo de autoridades
Send,  https://catalogo.bn.gov.ar/F/9UCX6KFPCL5VNEG4TPY3SAN6PCIAC9SASTLCGPUBB6CG4GY2A8-32755?func=scan&local_base=BNA10{Enter}
Sleep, 4000 ; Adjust this sleep time based on the page loading time

; Navigate to the "Búsqueda por palabras" option (Press the tab key 7 times)
Loop, 3 {
    Send, {Tab} 
}
Sleep, 2000

; Press enter to select "Búsqueda por palabras"
Send, {Enter}

Sleep, 1000

; Navigate back to the search bar (Press the tab key 7 times)
Loop, 7 {
    Send, {Tab}
}
Sleep, 1000

; Paste the term into the search bar (Press Ctrl+V)
Send, ^v
Sleep, 500

; Press enter to execute search
Send, {Enter}
