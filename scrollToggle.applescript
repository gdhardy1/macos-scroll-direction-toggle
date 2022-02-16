-- title: MacOS Scroll Direction Toggle
-- description: toggles natural scrolling in System Preferences "trackpad" menu
-- author: Gregory D. Hardy

tell application "System Preferences"
	activate
	set current pane to pane "com.apple.preference.trackpad"
end tell

tell application "System Events"
	tell process "System Preferences"
		delay 0.6
		click radio button "Scroll & Zoom" of tab group 1 of window "Trackpad"
		set naturalScroll to checkbox 1 of tab group 1 of window "Trackpad"
		click naturalScroll
		set myValue to value of naturalScroll as boolean
		if myValue then
			display notification "Natural scroll enabled" with title "Trackpad mode"
		else
			display notification "Natural scroll disabled" with title "Wireless mouse mode"
		end if
		
	end tell
	tell application "System Preferences" to quit
end tell
