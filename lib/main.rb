require_relative 'world'
require_relative 'world_console'

world = World.new(15)
world_string = WorldConsole.world_to_string(world)
puts world_string
