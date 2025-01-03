Little script that bypass "Ad blockers violate YouTube's Terms of Service"

# Requirements

Tcl/Tk installed on your system. 

# Usage

Open the script bypass_yt.tcl using the tcl "wish" command. Enter the video
ID in the text entry, choose your resolution. Pressing the "Open" button will
open a new tab with the video shown in "embeded" mode (see limitation).

Edit the script to match your screen resolution if needed.

# Limitation

The hack uses the "embeded" mode of youtube videos. It won't work with
channels that forbid embeding their videos (you'll have à message 
saying "watch this video on youtube").

# How it work

It opens the video in  "embed" mode.

Example to unlock and see the video:
https://www.youtube.com/watch?v=SomeRandomVideo-Id

We simply need a html file with an iframe pointing to:
https://www.youtube.com/embed/SomeRandomVideo-Id

Wich would look like this for example:
```html
<!DOCTYPE html>
<html>
    <body style="background-color:#000000;border:none;">
        <iframe style="border:none;" width=800 height=400
                src="https://www.youtube.com/embed/SomeRandomVideo-Id">
        </iframe>
    </body>
</html>
```
And open it with your browser.
