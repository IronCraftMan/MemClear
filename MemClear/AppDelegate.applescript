--
--  AppDelegate.applescript
--  MemClear
--
--  Created by Cole on 10/18/14.
--  Copyright (c) 2015 Cole. All rights reserved.
--

set version to "0.2r1"
set applicationisTerminating to 0

script AppDelegate
	property parent : class "NSObject"
	-- IBOutlets
	property theWindow : missing value
	on applicationWillFinishLaunching:aNotification
		----
		
		display dialog "iUtilities:" with title "iUtilities" buttons {"Other Options", "Clean Up RAM", "Quit"} default button 3
		set the button_pressed to the button returned of the result
		
		if the button_pressed is "Other Options" then
			
		else if the button_pressed is "Clean Up RAM" then
			
			do shell script "sudo purge" with administrator privileges
			tell me to quit
		else
			tell me to quit
		end if
		
		----
	end applicationWillFinishLaunching:
	on applicationShouldTerminate:sender
		set applicationisTerminating to 1
		return current application's NSTerminateNow
	end applicationShouldTerminate:
end script