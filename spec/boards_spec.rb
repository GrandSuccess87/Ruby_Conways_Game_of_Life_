# require 'board'
# require 'boards'

# RSpec.describe Board, "find_neighbors" do
#     it "edge square knows its neighbors" do
#         board = Board.new(4)

#         neighbors = Boards.find_neighbors(board, { x: 0, y: 1 })

#         expected_neighbors = [
#             { x: 0, y: 0 },
#             { x: 0, y: 2 },
#             { x: 1, y: 0 },
#             { x: 1, y: 1 },
#             { x: 1, y: 2 },
#             { x: 3, y: 0 },
#             { x: 3, y: 1 },
#             { x: 3, y: 2 },
#         ]
#         expect(neighbors).to eq expected_neighbors
#     end
# end
