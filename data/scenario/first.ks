; The first file to be called

[title name="TyranoScript Explanation"]

[stop_keyconfig]


; Convenient standard TyranoScript libraries
; Required when using config, CG, and Recollection Mode
@call storage="tyrano.ks"

; You should put any absolutely-necessary initialization processes in this file.

; Hides message box
@layopt layer="message" visible=false

; Hide the menu button at the bottom right at first
[hidemenubutton]

; Go to title screen
@jump storage="title.ks"

[s]


