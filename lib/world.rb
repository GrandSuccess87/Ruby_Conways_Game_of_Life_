class World
    attr_reader :rows
    attr_reader :living_cells

    def initialize(number_of_rows, living_cells = [])
        @rows = build_rows(number_of_rows)
        @living_cells = living_cells
        @cell = Cell.new
    end

    def self.add_living_cell(world, location)
            world.add_cell(location)
    end

    def add_cell_to_world(cell, location)
      x = location.x
      y = location.y
      @rows[x][y] = cell
    end

    def fill_world(cell)
        @rows.each do |row|
          row.each_with_index do |spot, index|
            row[index] = cell
          end
        end
    end

    def cell_count
      total_count = 0
      @rows.each do |row|
        total_count += row.count {|x| x.is_a?(Cell)}
      end
      total_count
    end

    def build_rows(number_of_rows)
        number_of_rows.times.map do
            Array.new(number_of_rows)
        end
    end

    def set_living_at(location)
      x = location.x
      y = location.y
      @cell.update_nonliving_cell_status
      @cell.isAlive?
    end

    def set_dead_at(location)
      x = location.x
      y = location.y
      @cell.update_living_status
      @cell.isAlive?
    end

    def aliveAt?(location)
      set_dead_at(location)
    end

    def add_cell(cell_location)
      updated_living_cells = @living_cells + [cell_location]
      World.new(@rows.size, updated_living_cells)
    end

    def adjacent_neighbors(location)
      x = location.x
      y = location.y
      [[x,y+1], [x+1,y+1], [x+1,y], [x+1,y-1], [x-1,y-1], [x,y-1], [x-1,y+1], [x-1,y]]
    end

    def get_neighbors
      [[]]
    end

    def is_living_cell_at_location?(location)
      []
    end

    def living_cells
      @living_cells
    end

end
