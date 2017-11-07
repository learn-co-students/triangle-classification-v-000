class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y ,z)
    @x = x
    @y = y
    @z = z
  end

  def triangle?
    inequality_theorem = [(x + y > z), (x + z > y), (z + y > x)]
    [x, y, z].each { |s| inequality_theorem << false if s <= 0 }
    raise TriangleError if inequality_theorem.include?(false)
  end

  def check_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || z == y
      :isosceles
    elsif x != y && y != z && z != x
      :scalene
    end
  end

  def kind
    triangle?
    check_triangle
  end
end

class TriangleError < StandardError
  def error
    "Triangle Inequality Theorem not met."
  end
end
