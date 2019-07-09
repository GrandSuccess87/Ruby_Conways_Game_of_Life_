class World
    attr_reader :rows
    attr_reader :living_cells

    def initialize(number_of_rows, living_cells = [])
        @rows = build_rows(number_of_rows)
        @living_cells = living_cells
    end

    def self.add_living_cell(world, location)
      world.add_cell(location)
    end

    def adjacent_neighbors(x, y)
      [[x,y+1], [x+1,y+1], [x+1,y], [x+1,y-1], [x-1,y-1], [x,y-1], [x-1,y+1], [x-1,y]]
    end

    def build_rows(number_of_rows)
        number_of_rows.times.map do
            Array.new(number_of_rows)
        end
    end

    def add_cell(cell_location)
      updated_living_cells = @living_cells + [cell_location]
      World.new(@rows.size, updated_living_cells)
    end

    def living_cells
      @living_cells
    end

end
