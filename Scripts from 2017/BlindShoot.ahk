#NoEnv
SendMode Input

Esc::ExitApp


^t::
	Loop 1000
	{
		Random, x, 301, 1156
		Random, y, 304, 667
		Send, T
		Click %x%, %y%
		MouseMove, 680, 621
		Send, S
	}
Return