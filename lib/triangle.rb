class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validating_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  def validating_triangle
    if !(x + y > z &&  x + z > y && y + z > x)
      raise TriangleError
    elsif !(x > 0 && y > 0 && z > 0)
      raise TriangleError
    end
  end

end



class TriangleError < StandardError
end
