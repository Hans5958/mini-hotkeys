#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Run, "C:\Program Files (x86)\Canon\IJ Scan Utility\SCANUTILITY.exe"

Page := 6
MsgBox, 262144, Scanning Helper, Choose your mode first, then press OK.
Loop {
	MsgBox, 262145, Scanning Helper, Pages scanned: %Page%`nOK to continue.
	WinActivate, Scan Complete
	IfMsgBox, OK 
	{
		Send, {Enter}
		Page++
	}
	IfMsgBox, Cancel 
	{
		Send, {Right}{Enter}
		Return
	}
	Sleep, 1000
	WinWaitActive, Scan Complete
}