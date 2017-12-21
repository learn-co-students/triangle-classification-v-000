class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a <= 0 || b <= 0 || c <= 0) || ((a + b <= c)||(b + c <= a)||(a + c <= b))
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      elsif a != b && b != c && a != c
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
