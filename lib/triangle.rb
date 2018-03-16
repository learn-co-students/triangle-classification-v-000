class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if !(valid_triangle?)
      raise TriangleError
    else
      if (x == y) && (y == z)
        :equilateral
      elsif (x == y) || (x == z) || (y == z)
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid_triangle?
    if (x > 0 && y > 0 && z > 0) && ((x + y > z) && (x + z > y) && (y + z > x))
      true
    else
      false
    end
  end
end

class TriangleError < StandardError
end