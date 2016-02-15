class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x + y <= z || x + z <= y || y + z <= x
        raise TriangleError
    end

    if x == y && y == z
        return :equilateral
      elsif y == z || x == z || x == y
        return :isosceles
      elsif x != y && y != z
        return :scalene
    end
  end
end

class TriangleError < StandardError
end
