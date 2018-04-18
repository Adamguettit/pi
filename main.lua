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

display.newText("Enter a number of how many iterations you want to happen for pi", 1024, 500, native.systemFont, 70)

local function enterButtonTouch( event )

    

    if ( event.phase == "began" ) then

        print("start")

    elseif ( event.phase == "ended" ) then

        answer = 0
        iteration = iterationTextField.text 
        iterationToNumber = tonumber (iteration)

        if iterationToNumber > 0 then

        	for counter = 0,iterationToNumber-1 do 
        		answer = answer + (((-1)^counter) / (2 * counter + 1))
        		
        	end
        	display.newText(answer * 4, 1024, 1200, native.systemFont, 100)
        else
        	display.newText("make sure you wrote a positive real number", 1024, 1200, native.systemFont, 60)
        end
        
        return true
    end
end



enterButton:addEventListener( "touch", enterButtonTouch )

