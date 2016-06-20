class Knight
  attr_accessor :x , :y, :color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    incrementX = (@x - final_x).abs
    incrementY =	(@y - final_y).abs
    if ((incrementX == 2) && (incrementY == 1)) || ((incrementX == 1) && (incrementY == 2))
      true
    else
      false
    end
  end
end