class Rook
  attr_accessor :x , :y
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if true #TODO
      true
    else
      false
    end
  end
end