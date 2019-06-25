require 'pry'

class Board 
    attr_reader :rows

    def initialize(row_count)
        @rows = build_rows(row_count)
    end

    def build_rows(row_count)
        # binding.pry
        @rows = [1..row_count].to_a.map do |row|
            row.to_a.map { |r| [0, 0] } 
        end
        @rows.shift
    end

    def print_rows
        # binding.pry
        @rows.each do |row|
            row.each do |cell|
                n = rows.count
                total_number_of_rows = n.times.collect{"|" + ((cell == 1) ? "*" : "-") + "|"}.join()
                puts total_number_of_rows
            end
        end
    end

end