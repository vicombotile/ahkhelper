MoveActiveWindowBy(x, y) {
    WinExist("A")  ; Make the active window the Last Found Window  
    WinGetPos(&current_x, &current_y)
    WinMove(current_x + x, current_y + y)
}
#Right:: MoveActiveWindowBy(+50,0)
#Left:: MoveActiveWindowBy(-50,0)
#Up:: MoveActiveWindowBy(0,-50)
#Down:: MoveActiveWindowBy(0,+50)
#+Right:: MoveActiveWindowBy(+10,0)
#+Left:: MoveActiveWindowBy(-10,0)
#+Up:: MoveActiveWindowBy(0,-10)
#+Down:: MoveActiveWindowBy(0,+10)
#F:: WinMaximize("A")
#S:: WinMinimize("A")
^!D:: MsgBox(A_Clipboard)
^!B:: Run("opera.exe")
^!I:: Run("Code")
^!M:: Send("Message")
^!P:: 
^!E::
{ 
    MouseGetPos( &MouseX, &MouseY)
    Color := "Color: " . PixelGetColor(MouseX, MouseY)
    MsgBox(Color, "Eyedropper")
}
^!+H::
{
    MsgBox("This is a package of simple functions for your convenience. These are the shortcuts (which are the only way to activate!): Win+Right: Move window right Win+Left: Move window left Win+Up: Move window up Win+Down: Move window down. Adding Shift to any of those functions will decrease the amount of steps the window moves. Win+F: Maximise the window Win+M: Minimize the window Ctrl+Alt+D: Dipslay the first item of the clipboard Ctrl+Alt+B: Open default browser Ctrl+Alt+I: Open default code editor Ctrl+Alt+P or Ctrl+Alt+E: Display the hex code of the color of the pixel at cursor Ctrl+Shift+Alt+H: Display this help message. ", "Help")
}