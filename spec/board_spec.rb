require 'board'

RSpec.describe Board, "#rows" do
    it "returns the cells as rows in one dimension" do
        board = Board.new(2)

        rows = board.rows

        expect(rows).to eq [[0, 0]]
    end

    it "returns the cells as rows in one dimension" do
        board = Board.new(4)

        rows = board.rows

        expect(rows).to eq [[0, 0, 0, 0]]
    end

    it "returns the cells as rows in one dimension" do
        board = Board.new(10)

        rows = board.rows

        expect(rows).to eq [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
    end

end