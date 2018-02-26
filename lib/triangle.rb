class Triangle
  
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <= 0
      raise TriangleError
    elsif @x + @y <= @z || @x + @z <= @y || @z + @y <= @x
      raise TriangleError
    else
      if @x == @y && @y == @z
        :equilateral
      elsif @x == @y || @y == @z || @x == @z
        :isosceles
      else
        :scalene
      end
    end 
  end
end

class TriangleError < StandardError
  def message
    "Each side must be larger than zero, and the sum of the lengths of any two sides always exceeds the length of the third side."
  end
end
  
