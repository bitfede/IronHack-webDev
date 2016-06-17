
class Pawn
  attr_accessor :x , :y, :color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    
    if @color == "black"
      #pawn is black, is on top
      if ((final_y == @y - 1) || (final_y == @y - 2)  ) && final_x == @x
        true
      else
        false
      end

    else
      #pawn is white, which means it stays at the bottom
      if ((final_y == @y + 1) || (final_y == @y + 2)  ) && final_x == @x
        true
      else
        false
      end
    end

  end
end