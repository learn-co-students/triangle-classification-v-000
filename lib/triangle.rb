class Triangle
  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x == 0 || @y == 0 || @z == 0 || @x + @y <= @z ||  @x + @z <= @y || @y + @z <= @x
      raise TriangleError, "Your triangle is messed up bro!"
    elsif @x == @y && @x == @z
      :equilateral
    elsif @x == @y || @x == @z || @y == @z
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError; end
