#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Command(x)
{
	SendRaw, %x%
	Sleep, 100
	Send, {Enter}
}

^d::
	Command(.join)
	Command(!join)
	Command(@join)
	Command(#join)
	Command($join)
	Command(^join)
	Command(&join)
	Command(*join)
	Command(-join)
	Command(=join)
	Command(_join)
	Command(+join)
	Command(|join)
	Command(<join)
	Command(>join)
	Command(?join)
	Command(/join)
Return



