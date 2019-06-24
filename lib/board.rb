require 'pry'

class Board 
    attr_reader :rows

    def initialize(row_count)
        @rows = build_rows(row_count)
    end

    def build_rows(row_count)
        @rows = [0..row_count].to_a.map do |row|
            [0..row_count].to_a.map do |entry|
                entry.to_a.map { |e| 0 }
            end
        end
    end

    def print_rows
        @rows.each do |row|
            row.each do |cell|
                "|" + (cell == 1) ? "*" : "-" + "|"
            end
        end
    end
end