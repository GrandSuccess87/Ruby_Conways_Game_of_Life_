require 'board'

RSpec.describe Board, "#rows" do
    it "returns 0 cells as a row" do
      board = Board.new(0)

      rows = board.rows

      expect(rows).to eq []
    end

    it "returns 1 cell as a row" do
      board = Board.new(1)

      rows = board.rows

      expect(rows).to eq [[0]]
    end

    it "returns the cells as rows" do
        board = Board.new(2)

        rows = board.rows

        expect(rows).to eq [[0], [0]]
    end

    it "returns the cells as rows" do
      board = Board.new(4)

      rows = board.rows

      expect(rows).to eq [[0], [0], [0], [0]]
    end

    it "returns the cells as rows" do
      board = Board.new(10)

      rows = board.rows

      expect(rows).to eq [[0], [0], [0], [0], [0], [0], [0], [0], [0], [0]]
    end

    it "returns the cells as rows" do
      board = Board.new(15)

      rows = board.rows

      expect(rows).to eq [[0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0]]
    end

end
