#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^t::
	MouseMove, 433, 172
	SendRaw, C 
	Click, 433, 172
	Click, 1, 1
	MouseMove, 433, 172
	SendRaw, C 
	Click, 469, 172
	Send, C 
	Click, 501, 172
	Send, C
	Click, 433, 215
	Send, C 
	Click, 469, 215
	Send, C 
	Click, 501, 215
	Send, C
	Click, 433, 255
	Send, C 
	Click, 469, 255
	Send, C 
	Click, 501, 255
