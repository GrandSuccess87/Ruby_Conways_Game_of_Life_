require_relative 'location'
require_relative 'world'
require_relative 'world_console'

world = World.new(15)
location = Location.new(2,1)

world_with_one_cell = World.add_living_cell(world, location)
world_with_two_cells = World.add_living_cell(world_with_one_cell, Location.new(3,2))
world_with_three_cells = World.add_living_cell(world_with_two_cells, Location.new(3,3))
world_with_four_cells = World.add_living_cell(world_with_three_cells, Location.new(2,3))
world_with_five_cells = World.add_living_cell(world_with_four_cells, Location.new(1,3))

world_string = WorldConsole.world_to_string(world_with_five_cells)
puts world_string
