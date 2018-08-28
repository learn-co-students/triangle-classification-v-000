class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind #uses a sorted array to determine triangle validity and type
    sides = [a, b, c].sort
    if sides.include?(0) || (sides[0] + sides[1] <= sides[2])
      begin
        raise TriangleError
      end
    elsif sides.uniq.size == 3
      :scalene
    elsif sides.uniq.size == 2
      :isosceles
    else
      :equilateral
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle size provided."
    end
  end
end
