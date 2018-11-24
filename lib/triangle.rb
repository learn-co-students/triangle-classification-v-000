class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
      if (a+b <= c) || (b+c <= a) || (a+c <= b) || (a <= 0 || b <= 0 || c <= 0)
          raise TriangleError
      else
        @a = a
        @b = b
        @c = c
      end
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
