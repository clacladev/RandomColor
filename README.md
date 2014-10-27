RandomColor
===========

Swift extension of UIColor to provide methods to generate random colors.

In the UIColor extension I've added two class methods:

	// Purely random color
	UIColor.randomColor()						
	
	// Create a new tone of a specified starting color
	UIColor.randomToneByColor(color: UIColor)
	
	
	// Random color generated with the Golden ratio
	// Use this, adjusting only satuarion/brightness if needed, to generate good looking random colors
	UIColor.RC_randomGoldenRatioColor(saturation: 0.5, brightness: 0.95)

In the test project you can test the two methods


# Installation
You have two ways to install this module/framework/library.

#### Option A: Frameworks (Better)
Trasnform your XCode project into a workspace. Then add the RandomColorExample project to your workspace. Now goes in the Project, select your app *target* and add a new *Linked Framework*. Add the framework with name **RandomColor.framework**.

Remember that you should import the module (*import RandomColor*) in the classes where you're going to use it.

#### Option B: Copy
Download the code and add to your project the file **RandomColorExtension.swift** . Start to use the new class methods.


# Contacts
Please comment, report issues and suggest improvements. You can write me at <claudio@tugulab.org>. 

#### Cheers!
