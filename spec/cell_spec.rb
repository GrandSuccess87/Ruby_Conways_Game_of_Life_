require 'cell'

RSpec.describe Cell, "#cell" do
  it "returns a cell that initially starts as not living" do
    cell = Cell.new

    cell_not_living = cell.isAlive?

    expect(cell_not_living).to eq false
  end

  it "updates a not living cells status to living" do
    cell = Cell.new

    cell.update_nonliving_cell_status

    expect(cell.isAlive?).to eq true
  end

  it "updates a living cells status to not living" do
    cell = Cell.new

    cell.update_nonliving_cell_status
    cell.update_living_status

    expect(cell.isAlive?).to eq false
  end
end
