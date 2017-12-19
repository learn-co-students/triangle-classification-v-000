class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validate_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(x + y > z), (x + z > y), (y + z > x)]
    [x, y, z].each {|i| real_triangle << false if i <= 0}
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
