class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def invalid?
    if a + b <= c || b + c <= a || a + c <= b
      true
    elsif a == 0 &&b == 0 && c == 0
      true
    else
      false
    end
  end

  def kind
    if invalid?
      raise TriangleError
    elsif a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end
  end

class TriangleError <StandardError
end
