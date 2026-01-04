# till.lua
⚠️ This library is experimental and under active development and Requires LÖVE version 11.x+

This is a library that adds a loop to lua (it is my first so there will probably be lots of bugs) and more loops will come soon. 

Firstly, this library uses the LÖVE2D engine which can be installed [here](https://love2d.org/) and to run it you need to change derectory to the folder (yes a separate folder with only your programs using this library is necessary)
with your program, then type love . into the console to run your program, and it will run the entire folder. Note the folder must contain at least one file called main.lua. Firstly, function number 1(wait_till): wait_till provides a 
simple “run until” abstraction for Love2D, stopping execution when either a specified key is pressed or a time duration expires. Now how do you use it, well it is called like this: till.wait_till("space", 1, "text") but how does it 
work, well space can be replaced with any key [here is a link to the different keys you can use inside quotes instead of space](https://love2d.org/wiki/KeyConstant) and when pressed stops the loop, 1 is the time durration after 1
second the program will stop even if the key hasn't been pressed and you gessed it 1 can be replaced by any number in order to change the duration (the number being the amount of seconds). Finaly the "text" part can be replaced with
anything and what you replace it with is what is printed when the program is finished.

Final notes: if a screen pops up dont close it as it will force quit the program, I will make a update which remove this eventually.
