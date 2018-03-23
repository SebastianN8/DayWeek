-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 22
--
-- This program tells the user if it is a day of the week or not
-----------------------------------------------------------------------------------------

-- Visual elements
display.setDefault('background', 0, 0.25, 0.1)
local myTitle = display.newText('Is it weekend or not?', display.contentCenterX, 200, native.SystemFont, 100)

-- Initiation Button 
local myImage = display.newImageRect('./Assets/Sprites/enterButton.png', 300, 200)
myImage.x = display.contentCenterX + 450
myImage.y = 505
myImage.id = 'The initiator'

-- Answer text
local myTextField = native.newTextField(display.contentCenterX, 500, 400, 150)
myTextField.id = 'The day'

-- Statement variable
local myResult = display.newText('', display.contentCenterX, 800, native.SystemFont, 150)

-- function
local function whatDayIs(event)
	-- Variables
	local dayOfWeek = myTextField.text
	local dayArray = {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'}

	-- For function
	local function hasValue(tab, val)
		for i, value in pairs(tab) do
			if value == val then 
				return i
			end
		end
		return false
	end
	
	-- If statement 
	if dayOfWeek == 'Saturday' or dayOfWeek == 'Sunday' then
		myResult.text = ('It is a day of the weekend!!')
	elseif hasValue(dayArray, dayOfWeek) then
		myResult.text = ('It is not a day of the weekend!!')
	else 
		myResult.text('Your input is not a valid day of the week!')
	end
end

myImage: addEventListener('touch', whatDayIs)