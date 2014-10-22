RandomColor
===========

Swift extension of UIColor to provide methods to generate random colors.

In the UIColor extension I've added two class methods:

	// Purely random color
	UIColor.randomColor()						
	
	// Create a new tone of a specified starting color
	UIColor.randomToneByColor(color: UIColor)

In the test project you can test the two methods


# Installation

### Option A: Frameworks (Best)
Trasnform your XCode project into a workspace. Then add the RandomColorExample project to your workspace. Now goes in the Project, select your app *target* and add a new *Linked Framework*. Add the framework with name **RandomColor.framework**.

### Option B: Copy
Download the code and add to your project the file **RandomColorExtension.swift** . Start to use the new class methods.


# Contacts
Please comment, report issues and suggest improvements. You can write me at <claudio@tugulab.org>. 

#### Cheers!
