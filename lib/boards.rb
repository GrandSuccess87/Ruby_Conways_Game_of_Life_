class Boards
    def self.find_neighbors(board, x: x, y: y)
        valid_cells = []
        board.rows.each do |row|
            row.each do |cell|
                valid_cells.push(cell)
            end
        end
        board.rows()
    end
end
