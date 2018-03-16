class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    error?
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def error?
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || c + b <= a
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
