require 'world'
require 'location'
require 'cell'

RSpec.describe World, "#rows" do
    it "returns an empty world" do
      world = World.new(0)

      rows = world.rows

      expect(rows.size).to eq 0
    end

    it "returns an empty world of size 1" do
      world = World.new(1)

      rows = world.rows

      expect(rows.size).to eq 1
      expect(rows.first.size).to eq 1
    end

    it "returns an empty world of size 2" do
        world = World.new(2)

        rows = world.rows

        expect(rows.size).to eq 2
        expect(rows.first.size).to eq 2
    end

    it "returns an empty world of size 4" do
      world = World.new(4)

      rows = world.rows

      expect(rows.size).to eq 4
      expect(rows.first.size).to eq 4
    end

    it "returns an empty world of size 10" do
      world = World.new(10)

      rows = world.rows

      expect(rows.size).to eq 10
      expect(rows.first.size).to eq 10
    end

    it "returns an empty world of size 15" do
      world = World.new(15)

      rows = world.rows

      expect(rows.size).to eq 15
      expect(rows.first.size).to eq 15
    end

    it "fills the world" do
      world = World.new(10)
      cell = Cell.new

      world.fill_world(cell)

      expect(world.cell_count).to eq 100
    end
end


RSpec.describe World, "#neighbors" do
  it "returns no neighbors for an empty world" do
    world = World.new(0)

    neighbors = [[]]

    expect(world.get_neighbors).to eq neighbors
  end

  it "returns no neighbors for two cells that are not adjacent to each other" do
    world_with_one_cell = World.add_living_cell(World.new(5), Location.new(1,2))
    world_with_two_cells = World.add_living_cell(world_with_one_cell, Location.new(1,5))

    neighbors = [[]]

    expect(world_with_two_cells.get_neighbors).to eq neighbors
  end

  it "returns the 8 adjacent neighbors of [0,0]" do
    world = World.new(5)
    location = Location.new(0,0)

    neighbors = [[0,1], [1,1], [1,0], [1,-1], [-1,-1], [0,-1], [-1,1], [-1,0]]

    expect(world.adjacent_neighbors(location)).to eq neighbors
  end

  it "returns the 8 adjacent neighbors of [2,3]" do
    world = World.new(5)
    location = Location.new(2,3)

    neighbors = [[2,4], [3,4], [3,3], [3,2], [1,2], [2,2], [1,4], [1,3]]

    expect(world.adjacent_neighbors(location)).to eq neighbors
  end

  it "detects a grid space with no living cell" do
    world = World.new(5)
    location = Location.new(5,5)

    is_living = world.is_living_cell_at_location?(location)

    expect(is_living).to eq []
  end

end
