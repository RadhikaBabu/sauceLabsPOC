#!/bin/bash
sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/
osascript <<EOD
#    on run argv
    on run
    delay 80
        tell application "Aspera Connect"
	        activate
#	        set myFile to (item 1 of argv)
	        tell window 1
		        tell application "System Events"
#			        keystroke "g" using {command down, shift down}
#			        delay 2
#			        keystroke myFile
#			        delay 1
#			        keystroke return
			        delay 2
			        keystroke return
			        delay 20
			        click button "Allow"
		        end tell
	        end tell
        end tell
    end run
EOD