#NoEnv
SendMode Input

Esc::ExitApp


^t::
	Loop 2000
	{
		Random, x, 32, 255
		Send, {ASC 0%x%}
	}
Return