# Screen

Screen is a console application that allows you to use multiple terminal sessions within one window. The program operates within a shell session and acts as a container and manager for other terminal sessions, similar to how a window manager manages windows.

## Installation

<pre>
sudo apt-get update
sudo apt-get install screen
</pre>

## Commands

`screen` - Start a new screen session

`Ctrl-a ?` - Information about Key Bindings

`Ctrl-a c` - Directly create a new screen when inside one screen and also enter it

`screen -ls` List all the running screens

`screen -XS [session # you want to quit] quit` - Kil / Stop the screen

`screen -r [session # you want to attach to]` - Attach to a particular screen

`(ctrl + a) (ctrl + d)` OR `screen -dr` - Detach from screen
