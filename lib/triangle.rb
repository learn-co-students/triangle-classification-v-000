class Triangle
  attr_reader :triangle

  def initialize(x, y, z)
    @triangle = [x, y, z].sort
  end

  def kind
    if triangle[0] <= 0
      raise TriangleError, "Each side length must be greater than 0"
    elsif  triangle[0] + triangle[1] <= triangle[2]
      raise TriangleError, "Invalid side lengths - violates triangle inequality principle"
    else
      case triangle.uniq.size
        when 1 then :equilateral
        when 2 then :isosceles
        else :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
