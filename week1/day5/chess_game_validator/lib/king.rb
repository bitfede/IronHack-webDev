class King
	  attr_accessor :x , :y
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

  def can_move?(final_x, final_y)
    if !(final_x > @x + 1 || final_x < @x-1) && !(final_y > @y + 1 || final_y < @y-1)
      true
    else
      false
    end
  end

end