--[[
    quads2

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Demonstrates creating a table of quads from a texture and randomly drawing them.
]]

-- Don't do this in a "real" project, I've only done this so we don't need
-- to have copies of the extra libraries in every directory. Best practice is
-- to set things up so your project works with the default package.path, or
-- to only add paths that are inside your package directory. - Chris H.
package.path = package.path .. ';../../common/?/?.lua;../../common/?/init.lua'
package.path = package.path .. ';../../common/hump/?.lua'
package.path = package.path .. ';../../common/knife/?.lua'

push = require 'push'

function GenerateQuads(texture, width, height)
    local sheetWidth = texture:getWidth() / width
    local sheetHeight = texture:getHeight() / height

    local quadCounter = 1
    local quads = {}

    for y = 0, sheetHeight - 1 do
        for x = 0, sheetWidth - 1 do
            quads[quadCounter] =
                love.graphics.newQuad(x * width, y * height, width, height,
                    texture:getDimensions())
            quadCounter = quadCounter + 1
        end
    end

    return quads
end

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    texture = love.graphics.newImage('match3.png')
    quads = GenerateQuads(texture, 32, 32)
    randomQuad = quads[math.random(#quads)]

    push:setupScreen(512, 288, 1280, 720, {
        fullscreen = false
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:start()
    love.graphics.draw(texture, quads[math.random(#quads)])
    push:finish()
end
