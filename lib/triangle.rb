class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
      @a = a
      @b = b
      @c = c

      if a <= 0 || b <= 0 || c <= 0
        raise TriangleError
      end

      if a + b <= c || a + c <= b || b + c <= a
        raise TriangleError
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

end

class TriangleError < StandardError
end
