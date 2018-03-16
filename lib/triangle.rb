class Triangle
  attr_reader :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    triangle?
    if x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    sides = [x, y, z]
    triangles = [(x + y > z), (x + z > y), (y + z > x)]
    if sides.min <= 0 || triangles.include?(false)
    raise TriangleError
    end
  end
end

class TriangleError < StandardError
end