require 'world'
require 'location'

RSpec.describe World, "#rows" do
    it "returns an empty world" do
      world = World.new(0)

      rows = world.rows

      expect(rows.size).to eq 0
    end

    it "returns an empty world of size 2" do
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
end
