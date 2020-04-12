#!/usr/bin/env lua5.3

-- screen size settings
local cw = 380
local ch = 640


--create tables 
local dave = {}
local hal = {}

-- set colors for players
dave.color = {220/255, 220/255, 220/255} 
dave.color = {52/255, 52/255, 133/255} 

function love.load()
    love.window.setTitle("DicE")
    love.window.setMode(cw, ch, {resizable=false, vsync=false})
    love.graphics.setBackgroundColor(25/255, 125/255, 75/255)

end
 
 


function love.draw()

end




