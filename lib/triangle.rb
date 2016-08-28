class Triangle

  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    @sides = [x, y, z]
  end

  def kind
    if triangle? == false || positive? == false
      raise TriangleError
    elsif @sides.count(x) == 3
      :equilateral
    elsif @sides.count(x) == 2 || @sides.count(y) == 2 || @sides.count(z) == 2
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    (x + y) > z && (x + z) > y && (y + z) > x
  end

  def positive?
    true unless @sides.any?{|n| n <= 0}
  end
end

class TriangleError < StandardError
end
