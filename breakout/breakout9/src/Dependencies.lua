-- Don't do this in a "real" project, I've only done this so we don't need
-- to have copies of the extra libraries in every directory. Best practice is
-- to set things up so your project works with the default package.path, or
-- to only add paths that are inside your package directory. - Chris H.
package.path = package.path .. ';../../common/?/?.lua;../../common/?/init.lua'
package.path = package.path .. ';../../common/hump/?.lua'

-- push is a library that will allow us to draw our game at a virtual
-- resolution, instead of however large our window is; used to provide
-- a more retro aesthetic
--
-- https://github.com/Ulydev/push
push = require 'push'

-- the "Class" library we're using will allow us to represent anything in
-- our game as code, rather than keeping track of many disparate variables and
-- methods
--
-- https://github.com/vrld/hump/blob/master/class.lua
Class = require 'class'

-- a few global constants, centralized
require 'src/constants'

-- the ball that travels around, breaking bricks and triggering lives lost
require 'src/Ball'

-- the entities in our game map that give us points when we collide with them
require 'src/Brick'

-- a class used to generate our brick layouts (levels)
require 'src/LevelMaker'

-- the rectangular entity the player controls, which deflects the ball
require 'src/Paddle'

-- a basic StateMachine class which will allow us to transition to and from
-- game states smoothly and avoid monolithic code in one file
require 'src/StateMachine'

-- utility functions, mainly for splitting our sprite sheet into various Quads
-- of differing sizes for paddles, balls, bricks, etc.
require 'src/Util'

-- each of the individual states our game can be in at once; each state has
-- its own update and render methods that can be called by our state machine
-- each frame, to avoid bulky code in main.lua
require 'src/states/BaseState'
require 'src/states/GameOverState'
require 'src/states/PlayState'
require 'src/states/ServeState'
require 'src/states/StartState'
require 'src/states/VictoryState'
