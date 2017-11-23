class Triangle
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @triangle = [a, b, c]
  end

  def kind
    a, b, c = @triangle.sort
    if (a <= 0 || a + b <= c)
      raise TriangleError
    else
      if ((a == b) && (b == c) && (a == c))
        return :equilateral
      elsif ((a == b) || (b == c) || (a == c))
        return :isosceles
      else
        return :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
