class Triangle

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <=0 || @x + @y <= @z || @y + @z <= @x || @z + @x <= @y
      raise TriangleError
    else
      if (@x == @y) && (@y == @z)
        :equilateral
      elsif (@x == @y) || (@y == @z) || (@z == @x)
        :isosceles
      elsif (@x != @y) && (@y != @z) && (@z != @x)
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
