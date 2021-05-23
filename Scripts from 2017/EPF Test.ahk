#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ThrowSnowball(x, y)
{
	Send, T
	Click %x%, %y%
}
DelayClick(x, y)
{
	MouseMove %x%, %y%
	Click down
	Sleep, 250
	Click up
}

Split()
{
	Send, {F2}
}

^a::
	Split()
Return

^t::
	Split()
	Click 247, 603
	Sleep, 500
	Click 715, 615
	Sleep, 1500
	Click 932, 185
	Sleep, 7000
	DelayClick(641, 268)
	Sleep, 500
	DelayClick(641, 268)
	Split()
	Sleep 5000
	Sleep 2000
	ThrowSnowball(821, 188)	
	Split()
	Click 1033, 584
	Sleep, 8000
	Click 1049, 645
	Sleep, 8500
	Click 300, 643
	Sleep, 5500
	Click 295, 590
	Split()
	Sleep, 13000
	ThrowSnowball(529, 215)
	Sleep, 40000
	Split()
	Click 870, 426
	Sleep, 18000
	ThrowSnowball(1065, 461)
	Split()
	Sleep, 22500
	Click 892, 357
	Split()
Return
