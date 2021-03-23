# AHK-VSCode
Personal fix to override Mark Wiemer's pre-emptive suggestions.

Behold, my personal fix of Mark Wiemer's extraneous code suggestions - in short, it'll remove the bumpf and leave only the keyword (exemptions are MsgBox and ToolTip, which add a '%' for reasons).

Re: VSUpdate.ahk
It checks for the newest folder in the directory - I'm tired.


It replaces the original ahk.json file in C:\Users\" A_UserName "\.vscode\extensions\mark-wiemer___\snippets\ahk.json with my fixed version (ahkFix.json - but renamed), but it causes it to throw an error about "This MF has taken too long to load so it's f'd off the rest..."

My original plan was to create a hotkey to remove the rest of the line when Shift+Enter was pressed but that screwed up mid-code editing - I needed to just get rid of the whole thing and go back to basics (i.e. screw it, just give me the command itself and I'll display my own help stuff).

It works. All of it works fine, the helper code ('Ctrl+Space' Shows the command syntax, 'Ctrl+Alt+Space' shows the full description*, Alt+Space opens the docs for that command - in the same window, if it exists) but I get an error when it loads Wiemer's code for some reason - even though the json code is correct!

*Bearing in mind the display window is configured to having the VSCode window open in the top right of my 1920x1080 screen.

Re: 

