Little script that bypass "Ad blockers violate YouTube's Terms of Service"

# How it work

It opens the video in  "embed" mode.

Example to unlock and see the video:
https://www.youtube.com/watch?v=SomeRandomVideo-Id

Create a html file with an iframe pointing to:
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

