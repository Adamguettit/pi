------------------------------------------------------------------------------------------
-- created on : april 17
-- created by : Adam
-- main.lua
-- tries to get really close to what pi is depending on the number of iterations.
----------------------------------------------------------------------------------------

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY + 200
enterButton.id = "enter Button"

local iteration
local iterationTextField = native.newTextField( display.contentCenterX, display.contentCenterY , 450, 150 )
iterationTextField.id = "iteration TextField"

local function enterButtonTouch( event )
    
    if ( event.phase == "began" ) then
        print("start")
    elseif ( event.phase == "ended" ) then
        answer = 0
	    iteration = iterationTextField.text 
	    iterationtonumber = tonumber (iteration)

	    if iterationtonumber > 0 then

	    	for counter = 0,iterationtonumber -1 do 
	    		answer = answer - ((-1^counter) / (2 * counter + 1))
	    		answer = answer * 4
	    		print(answer)
	    	end
	    	
	    	else
	    	print("error")
	    end

     return true
	
	end
end

enterButton:addEventListener( "touch", enterButtonTouch )






































	


