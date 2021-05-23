#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; SETTINGS
; --------

LagDelay := 2000
SpinBlob := 100
Interval := 100
LoopCount := 25


; FUNCTIONS
; ---------

Esc::ExitApp

NextPage()
{
	Click 1023, 613
}

DragDrop(x1, y1, x2, y2)
{
	Click up
	Click %x1%, %y1%, do
	Sleep, 250
	MouseMove %x2%, %y2%
	Sleep, 250
	Click up
}

ClickCoin(x, y)
{
	Click up
	Click %x%, %y%, down
	Sleep, 250
	Click up
}

LagDelay()
{
	Global LagDelay
	Sleep, LagDelay
}

SpinBlob()
{
	Global SpinBlob
	Global Interval
	Loop %SpinBlob%
	{
		MouseMove 725, 210
		Sleep, %Interval%
		MouseMove 725, 585
		Sleep, %Interval%
		MouseMove 987, 492
		Sleep, %Interval%
		MouseMove 987, 210
		Sleep, %Interval%
	}
}

; RUN SCRIPT
; ----------

Start()
{
	Click 1107, 675
	Sleep, 250
	Click 571, 568
	Sleep, 250
	Click 609, 405
	Sleep, 1000
	Click 854, 613	
	NextPage()

	; PAGE 1

	Send, I am the busiest penguin I know.
	Send, Cleaning the windows at the Dojo.
	Send, Wiping them down and getting them shined.
	Send, Making sure no one has left streaks behind.
	Sleep, 3000
	DragDrop(1002, 380, 1002 ,150)
	Sleep, 4000
	DragDrop(888, 442, 746, 240)
	Sleep, 750
	ClickCoin(773, 331)
	NextPage()
	
	; PAGE 2
	
	Send, Then one day while I was working away,
	Send, Wouldn't you know it, some penguins they came
	Send, and brought this container as big as a tree.    
	Send, and filled to the top with glowing lime green!
	LagDelay()
	Sleep, 2000
	DragDrop(953, 528, 953, 170)
	Sleep, 100
	ClickCoin(898, 528)
	NextPage()
	
	; PAGE 3
	
	Send, I gazed in amazement as they fell in.
	Send, Then one of them spoke to me with a grin,
	Send, It's a colorful party for all to express!
	Send, But while he was so happy, the place was a mess!
	LagDelay()
	Sleep, 4000
	Click 798, 185, down
	Sleep, 50
	SpinBlob()
	Click up
	NextPage()
	
	; PAGE 4
	
	Send, There was paint on the walls and paint on the ceiling.
	Send, This paint-splattered place was so unappealing!
	Send, And just when I thought I could take it no more,
	Send, a penguin began to make tracks on the floor!
	LagDelay()
	Sleep 2000
	DragDrop(850, 621, 849, 412)
	Sleep, 2000
	DragDrop(895, 185, 840, 186)
	MouseMove 799, 232
	Click down
	Sleep, 1000
	Click up
	NextPage()
	
	; PAGE 5
	Send, "I just cleaned the floor!" I loudly proclaimed,
	Send, "And now I will have to go mop it again!"
	Send, But wouldn't you know it, this mop that I used
	Send, Was dropped in the bucket of lime-colored ooze!
	LagDelay()
	Sleep, 1000
	DragDrop(975, 437, 790, 443)
	Sleep, 5000
	Click 711, 274
	Click 878, 272
	Click 950, 268
	Click 800, 368
	Sleep, 500
	ClickCoin(800, 368)
	NextPage()
	
	; PAGE 6
	Send, Now I faced a decision of just what to do.
	Send, My mop was unusable thanks to this crew
	Send, The rags that I used were just far too worn out.
	Send, So I stood on that paint can and started to shout.
	LagDelay()
	Sleep, 500
	Click 720, 431, down
	Sleep, 250
	MouseMove 1125, 431
	Sleep, 250
	Click up
	Sleep, 250
	ClickCoin(783, 434)
	NextPage()
	
	; PAGE 7
	Send, Then a penguin responded, "You seem so upset!
	Send, It's time for a party, but did you forget?"
	Send, Perhaps there's a way for me to help you.
	Send, And I think that I know just what we should do!
	LagDelay()
	Sleep, 3000
	ClickCoin(855, 238)
	Sleep, 2750
	Click 866, 592, down
	Sleep, 250
	MouseMove 965, 208
	Sleep, 250
	MouseMove 858, 439
	Sleep, 250
	MouseMove 1001, 292
	Sleep, 250
	ClickCoin(861, 246)
	NextPage()
	
	; PAGE 8
	
	Send, The penguin she pointed towards a large box.
	Send, Containing some capes and a couple old socks.
	Send, "Let's use up these capes to clean up the mess!"
	Send, Now that's an idea I wouldn't have guessed!
	Sleep, 2000
	LagDelay()
	MouseMove 869, 585
	Global Interval
	Loop 5
	{
		Click down
		Sleep, %Interval%
		Click up
		Sleep, %Interval%
	}
	DragDrop(869, 585, 758, 285)
	DragDrop(869, 585, 964, 285)
	ClickCoin(987, 407)
	NextPage()
	
	; PAGE 9
	
	Send, When the party was over, then everyone joined!
	Send, They helped clean the Dojo without needing a coin.
	Send, And when we were done, the place was so perfect.
	Send, You'd never have guessed it was once a green wreck!
	Send, The End
	LagDelay()
	ClickCoin(1023, 613)
	Sleep, 5500
	Click 353, 620
	Sleep, 1000
	Click 884, 369
	Sleep, 3000
}

^t::
	Global LoopCount
	Loop %LoopCount%
	{
		Start()
	}
Return