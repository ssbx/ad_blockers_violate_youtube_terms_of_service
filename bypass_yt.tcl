#!/usr/bin/wish

set fullscreen 0
proc openVid {} {
    global fullscreen
    set v [ .ent get ]
    set f [ open "/tmp/$v.html" "w+" ]
    set w 1400
    set h 800
    if { $fullscreen == 1 } {
        set w 1920
        set h 1080
    }
    puts $f "
<!DOCTYPE html>
<html>
<body style=\"background-color:#000000;border:none;\">
<iframe style=\"border:none;\" width=$w height=$h src=\"https://www.youtube.com/embed/$v\">
</iframe>
</body>
</html>
"
    close $f
    .ent delete 0 end
    exec firefox "/tmp/$v.html"
}

ttk::label .lab -text "https://youtube.com/embed/..."
ttk::entry .ent
ttk::button .but -text "Open..." -command openVid
ttk::checkbutton .chk -text "full screen" -variable fullscreen

pack .lab -fill y -side left
pack .ent -fill y -side left
pack .but -fill y -side left
pack .chk -fill y -side left

