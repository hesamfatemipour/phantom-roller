#!/usr/bin/env lua5.3

-- screen size settings
local cw = 320
local ch = 480

-- create tables 
dice = {}

-- set colors for players
dice.color = {220/255, 220/255, 220/255} 
-- hal.color = {52/255, 52/255, 133/255} 

-- audio
local dice_audio = love.audio.newSource('snd/dice.ogg', 'stream')
dice_audio:setLooping(false)

function love.load()
    -- initializing the window
    love.window.setTitle("DicE")
    love.window.setMode(cw, ch, {resizable=false, vsync=false})
    love.graphics.setBackgroundColor(25/255, 125/255, 75/255)
    -- initialize the dice
    dice.img = love.graphics.newImage('img/Die1.png')

end
 

function love.draw()
    love.graphics.draw(dice.img, cw/2, ch/2, 0,0.06, 0.06, 1, 1)
end


function love.mousereleased()
    dice.dice =  math.random(1,6)
    dice.img = love.graphics.newImage(string.format('img/Die%d.png', dice.dice))
    love.audio.play(dice_audio)
end
