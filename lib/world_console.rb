class WorldConsole
  def self.world_to_string(world)
      world.rows.collect.with_index do |row, y|
        stringify_row(row, world.living_cells, y)
      end
      .join
  end

  private

  def self.stringify_row (row, living_cells, y)
    new_row = row.collect.with_index do |cell, x|
      get_cell_value(living_cells, x, y)
    end
    "|" << new_row.join("|") << "|\n"
  end

  def self.get_cell_value (living_cells, x, y)
    living_cells.any?{|living| living.x == x && living.y == y} ? "*" : "-"
  end
end
