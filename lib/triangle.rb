class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validate_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(x + y > z), (x + z > y), (y + z > x)]
    [x, y, z].each { |side| real_triangle << false if side <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
