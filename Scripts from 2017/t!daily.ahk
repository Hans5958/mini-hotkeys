#NoEnv
; #Warn
SendMode Event
SetWorkingDir %A_ScriptDir%

^d::
	SetKeyDelay, 100
	SendEvent, t{!}dailies{Enter}t{!}remindme Hey, go get your daily credits or you will miss the fun. in 24 hours{Enter}
Return