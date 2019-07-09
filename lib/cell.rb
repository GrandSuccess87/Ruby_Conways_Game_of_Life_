class Cell
  attr_reader :alive

  def initialize
    @alive = false
  end

  def isAlive?
    @alive
  end

  def update_nonliving_cell_status
    @alive = true
  end

  def update_living_status
    @alive = false
  end

end
