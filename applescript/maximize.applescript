set windowTitle to ""
tell application "System Events"
	set frontApp to first application process whose frontmost is true
	set frontAppName to name of frontApp
	tell process frontAppName
		tell (1st window whose value of attribute "AXMain" is true)
			set windowTitle to value of attribute "AXTitle"
		end tell
	end tell
end tell

tell application "Finder" to set _b to bounds of window of desktop
tell application frontAppName to set the bounds of window windowTitle to _b