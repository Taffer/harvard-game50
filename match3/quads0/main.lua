--[[
    quads0

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Demonstrates simply drawing a texture.
]]

-- Don't do this in a "real" project, I've only done this so we don't need
-- to have copies of the extra libraries in every directory. Best practice is
-- to set things up so your project works with the default package.path, or
-- to only add paths that are inside your package directory. - Chris H.
package.path = package.path .. ';../../common/?/?.lua;../../common/?/init.lua'
package.path = package.path .. ';../../common/hump/?.lua'
package.path = package.path .. ';../../common/knife/?.lua'

push = require 'push'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    texture = love.graphics.newImage('match3.png')

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
    love.graphics.draw(texture)
    push:finish()
end
