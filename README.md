###### If the script is running to long or you have any other issue you can close the script by pressing ESCAPE  ##### 

Installation and running script:

1. Go to https://autohotkey.com/download/ and click on the "Download AutoHotkey Installer
2. Install the software wherever you want, ( Selecting Unicode 64 is suggested ) anything else should be default.
3. Prepare the picture that you want, name it "image.bmp" ( I will explain this later ), then right click on the Image.ahk and run as admin
4. You have at least 5 seconds to alt tab to the game and press I and open a note, after that you just leave the mouse alone.
5. When its done drawing the image, at the end you will receieve a pop up with a number, that number means how many seconds it took to draw it,
   the max I got was 340 seconds. More complex the image, more time it takes.

###### If the script is running to long or you have any other issue you can close the script by pressing ESCAPE  #####

Preparing a picture:
1. Get a black and white picture of something.
2. Max WIDTH of the picture is 395 pixels, max HEIGHT is 546 pixels. ( Clicking on resize button in paint and then pixels shows the dimensions,
   I suggest keeping mantain pixel ratio on. )
3. Once either WIDTH or HEIGHT is at the correct size, you can use white squares at the bottom or right side of the picture, to increase
   HEIGHT or WIDTH respectevely to their max lenghts. I suggest that you always make the canvas the max size due to compatibility.
4. Go to file, click on save as, pick the name, if you dont want to edit the script, I suggest you name it "image.bmp". Click on type
   and select "Monochrome bitmap"
5. That should be it then, you might lose some pixels due to them not being perfectly black when doing so.

###### If the script is running to long or you have any other issue you can close the script by pressing ESCAPE  #####

Important stuff: 
1. You need to have Gdip.ahk Image.ahk and image.bmp in the same folder, anywhere on the computer. 
2. You have to run as admin due to Rage MP running as admin.
3. You have to run the game in fullscreen borderless ( just fullscreen might work too? Not tested )
4. You cant move the mouse or do anything while the script is running, which is why I implemented ESCAPE button
5. If ESCAPE doesn't work, last resort is CTRL + ALT + DEL and sign out of the user or shutdown PC.

###### If you do not want to install Autohotkey on your computer, you can run Image.exe as administrator, but do it at your own risk as you have to trust me by running a 3rd party executable. ######
