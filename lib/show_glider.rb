require_relative 'location'
require_relative 'world'
require_relative 'world_console'

world = World.new(15)
location = Location.new(0,0)

world = World.add_living_cell(world, Location.new(2,1))
world = World.add_living_cell(world, Location.new(3,2))
world = World.add_living_cell(world, Location.new(3,3))
world = World.add_living_cell(world, Location.new(2,3))
world = World.add_living_cell(world, Location.new(1,3))

world_string = WorldConsole.world_to_string(world)
puts world_string
