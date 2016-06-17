class Queen
attr_accessor :x , :y, :color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    incrementX = (@x - final_x).abs
    incrementY = (@y - final_y).abs

    if @x == final_x || @y == final_y
      true
    elsif (incrementY == incrementX)
      true
    else
      false
    end
  end
end