#SingleInstance, Force
SetBatchLines, -1
SetWorkingDir %A_ScriptDir%

#Include Gdip.ahk

Sleep, 5000
StartTime := A_TickCount
pToken := Gdip_Startup()
pBitmap := Gdip_CreateBitmapFromFile("image.bmp")
FoundBlack := {}
y := 545

Screen_X := Floor((A_ScreenWidth / 2)) - 170
Screen_Y := Floor((A_ScreenHeight / 2)) - 277

Loop, 546{
	x := 394
	Loop,395{
		Val := Gdip_GetPixel(pBitmap,x,y) + 0
		if( Val = 4278190080 ){
			;MsgBox, % "Val " Val " " x " "y
			;MouseClickDrag, Left, x + 791, y + 264, x + 792, y + 264, 0 263
			thing := {}
			thing.x := x
			thing.y := y
			FoundBlack.Push(thing)
		}
	x--
	}
	y--
}
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)
Loop{
	if(FoundBlack.Length() = 0){
		break
	}
	temp := FoundBlack.Pop()
	distance :=1
	Loop{
		if(FoundBlack[FoundBlack.Length()].x != ( temp.x + distance) OR FoundBlack[FoundBlack.Length()].y != temp.y){
			break
		}
		distance++
		FoundBlack.Pop()
	}
	MouseClickDrag, Left, temp.x + Screen_X, temp.y + Screen_Y, temp.x + Screen_X + distance, temp.y + Screen_Y, 0
}
ElapsedTime := ( A_TickCount - StartTime ) / 1000
MsgBox, %ElapsedTime% END
; 215 WIDTH
; 234 HEIGHT
; 791,264 | 1186,810 == WIDTH 395 | HEIGHT 546

Escape::
ExitApp
Return