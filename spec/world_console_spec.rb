require 'world_console'
require 'location'
require 'world'

RSpec.describe WorldConsole, "#world_to_string" do
  it "prints an empty world of size 15 as text" do
      world = World.new(15)
      world_as_string = WorldConsole.world_to_string(world)

      expected_board_as_string = "|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|\n"

      expect(world_as_string).to eq expected_board_as_string
  end

  it "prints a world of size 15 with one living cell as text" do
      world = World.add_living_cell(World.new(15), Location.new(0,0))
      world_as_string = WorldConsole.world_to_string(world)

      expected_board_as_string = "|*|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|\n"

      expect(world_as_string).to eq expected_board_as_string
  end

  it "prints a world of size 15 with two living cells as text" do
      world_with_one_cell = World.add_living_cell(World.new(15), Location.new(0,0))
      world_with_two_cells = World.add_living_cell(world_with_one_cell, Location.new(1,1))


      world_as_string = WorldConsole.world_to_string(world_with_two_cells)

      expected_board_as_string = "|*|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|*|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|\n"

      expect(world_as_string).to eq expected_board_as_string
  end

  it "prints a world of size 15 of a Glider pattern with 5 alive cells as text" do
      world_with_one_cell = World.add_living_cell(World.new(15), Location.new(2,1))
      world_with_two_cells = World.add_living_cell(world_with_one_cell, Location.new(3,2))
      world_with_three_cells = World.add_living_cell(world_with_two_cells, Location.new(3,3))
      world_with_four_cells = World.add_living_cell(world_with_three_cells, Location.new(2,3))
      world_with_five_cells = World.add_living_cell(world_with_four_cells, Location.new(1,3))

      world_as_string = WorldConsole.world_to_string(world_with_five_cells)

      expected_board_as_string =
"|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|*|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|*|-|-|-|-|-|-|-|-|-|-|-|
|-|*|*|*|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|\n"

      expect(world_as_string).to eq expected_board_as_string
  end

  it "prints a world of size 15 of a Small Exploder pattern with 7 alive cells as text" do
      world_with_one_cell = World.add_living_cell(World.new(15), Location.new(2,2))
      world_with_two_cells = World.add_living_cell(world_with_one_cell, Location.new(1,3))
      world_with_three_cells = World.add_living_cell(world_with_two_cells, Location.new(2,3))
      world_with_four_cells = World.add_living_cell(world_with_three_cells, Location.new(3,3))
      world_with_five_cells = World.add_living_cell(world_with_four_cells, Location.new(1,4))
      world_with_six_cells = World.add_living_cell(world_with_five_cells, Location.new(3,4))
      world_with_seven_cells = World.add_living_cell(world_with_six_cells, Location.new(2,5))

      world_as_string = WorldConsole.world_to_string(world_with_seven_cells)

      expected_board_as_string =
"|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|*|-|-|-|-|-|-|-|-|-|-|-|-|
|-|*|*|*|-|-|-|-|-|-|-|-|-|-|-|
|-|*|-|*|-|-|-|-|-|-|-|-|-|-|-|
|-|-|*|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|\n"

      expect(world_as_string).to eq expected_board_as_string
  end
end
