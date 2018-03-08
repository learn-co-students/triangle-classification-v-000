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
    elsif @x + @y <= @z || @y + @z <= @x || @x + @z <= @y 
      raise TriangleError
    elsif
      @x == @y && @x == @z
      triangle = :equilateral
    elsif @x == @y || @x == @z || @y == @z
      triangle = :isosceles
    elsif
      @x != @y && @x != @z
      triangle = :scalene
  end
end
end
  class TriangleError < StandardError

end
