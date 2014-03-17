tell application "BBEdit" to activate

tell window 1 of application "BBEdit"
	set matchObj to find "->$(?s).*?^\\r^\\r" options {search mode:grep} with selecting match
	set foundObj to found object of matchObj
	
	set firstCharacter to (foundObj's characterOffset)
	set lastCharacter to (foundObj's length) + firstCharacter
	select (characters (firstCharacter) thru (lastCharacter - 3))
	--select characters foundObj -1
	--set selection to 
end tell
tell application "System Events"
	tell process "BBEdit"
		tell menu bar 1
			tell menu bar item "View"
				tell menu "View"
					click menu item "Fold Selection"
				end tell
			end tell
		end tell
	end tell
end tell