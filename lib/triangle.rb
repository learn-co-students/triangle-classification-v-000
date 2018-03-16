class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a * b * c <= 0 || a >= b + c || b >= a + c || c >= a + b
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end