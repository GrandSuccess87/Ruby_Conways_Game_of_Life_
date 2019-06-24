require_relative 'board'

board = Board.new(4) {Board.new}
puts "Build Rows Method"
puts board.rows

puts "Print Rows Method"
puts board.rows