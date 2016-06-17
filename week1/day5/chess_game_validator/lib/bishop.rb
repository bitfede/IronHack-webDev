class Bishop
  attr_accessor :x , :y
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    incrementX = (@x - final_x).abs
    incrementY = (@y - final_y).abs
    if (incrementY == incrementX)
      true
    else
      false
    end
  end
end