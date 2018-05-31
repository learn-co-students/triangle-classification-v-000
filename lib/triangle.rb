class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if valid_triangle?
      puts true
    else
      raise TriangleError
    end

    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene
    else
      :isosceles
    end
  end

  def valid_triangle?
    x.positive? && y.positive? && z.positive? && x + y > z && x + z > y && y + z > x
  end

class TriangleError < StandardError
end

end
