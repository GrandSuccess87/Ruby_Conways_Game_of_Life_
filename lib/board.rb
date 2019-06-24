require 'pry'

class Board 
    attr_reader :rows

    def initialize(row_count)
        @rows = build_rows(row_count)
    end

    def build_rows(row_count)
        @rows = [1..row_count].to_a.map do |row|
            row.to_a.map { |r| 0}
        end
    end
end