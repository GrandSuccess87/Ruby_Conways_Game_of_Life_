class Cell
  attr_reader :alive

  def initialize
    @alive = false
  end

  def isAlive?
    @alive
  end

  def update_nonliving_cell_status
    @alive == false ? true: false
  end

  def update_living_cell_status
    @alive == true ? false: true
  end

end
