class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangle_validate
    test_kind
  end

  def triangle_validate
    if (a + b <= c) || (b + c <= a) || (a + c <= b)
     raise TriangleError
   end
    [a, b, c].each do |s|
      if s <= 0
        raise TriangleError
      end
    end
  end

  def test_kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
