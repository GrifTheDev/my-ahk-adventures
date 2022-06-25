# My AHK Adventures
As inspired by the [*king of macros*](https://www.youtube.com/channel/UCd0ZD4iCXRXf18p3cA7EQfg), otherwise known as Taran Van Hemert, this repository serves as my public record of using AHK scripts (and at one point a second keyboard), as a web-developer.

This varies from Taran's usage as he uses his multiple keyboards and macros for video editing (which is quite different from web-development). Here, I will post my (sometimes very bad) AHK scripts, and provide a place for others who may want to dabble with AHK, of course using some of the techniques made by Taran.

- Taran's GitHub repository: https://github.com/TaranVH/2nd-keyboard
- Taran's YouTube channel: https://www.youtube.com/channel/UCd0ZD4iCXRXf18p3cA7EQfg

## Progress

### June 25th 2022
Today I created the "My AHK adventures" repository and completed [my first script](https://github.com/GrifTheDev/my-ahk-adventures/blob/main/Numpad%20scripts/terminal_commands.ahk). The script simply allows for automatic selection of the terminal in VSCode, and execution of the `npm run lint` and `npm run dev` commands, all by pressing one button on my numberpad. I still do not have a secondary keyboard as I am a beginner, so my numberpad is enough for now.

As for how the script works, firstly, it checks if the active app is VSCode, then it gets the color of the pixels in the bottom right position of the screen (as the terminal, by default, stretches out at the bottom of the VSCode Window). If the pixel is equal to the hex code of the background of VSCode (not the terminal's background), it will just send `CTRL + SHIFT + .`(not bound by default), to open the terminal. If the pixel at the position is equal to the terminal's color, it will check if the mouse is within the terminal. If it is, it will just send a click, if it is not, it will move the mouse and then click. Finally, it will select all text, delete it, paste the command in to the terminal, and hit `Enter`. All of this, is done, with one tap of the (by my choice) numpad slash and star keys.
