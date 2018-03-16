class Triangle
  # write code here
  attr_reader :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  def kind
    case
    when (x <= 0 || y <= 0 || z <= 0) || (((x + y) <= z) || ((x + z) <= y) || ((z + y) <= x))
      raise TriangleError
    when x == y && y == z && z == x
      :equilateral
    when x == y || y == z || z == x
      :isosceles
    when x != y && y != z && z != x
      :scalene
    end
  end
end

class TriangleError < StandardError

end
