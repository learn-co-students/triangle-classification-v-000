class Triangle
  attr_accessor :sides

  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    a, b, c = sides.sort

    raise TriangleError unless a + b > c

    raise TriangleError if sides.any? { |s| s <= 0 }

    case sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
end

class TriangleError < StandardError
end
