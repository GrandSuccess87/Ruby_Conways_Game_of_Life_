class Boards
    def self.find_neighbors(board, x: x, y: y)
        valid_cells = []
        board.rows.each do |row|
            row.each do |cell|
                valid_cells.push(cell)
            end
        end
        board.rows()
    #     [
    #         {
    #             x: x, y: y - 1
    #         },
    #         {
    #             x: x, y: y + 1
    #         },
    #         {
    #             x: x + 1, y: y - 1
    #         },
    #         {
    #             x: x + 1, y: y
    #         },
    #         {
    #             x: x + 1, y: y + 1
    #         },
    #         {
    #             x: x + 3, y: y
    #         },
    # ]
    end
end