class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || c == b
      :isosceles
    else
      :scalene
  end
end
private

  def valid_triangle
    if a <= 0 && b <= 0 && c <= 0
    raise TriangleError
  elsif a < 0 || b < 0 || c < 0
    raise TriangleError
  elsif a + b < c || b + c < a || c + a <= b
    raise TriangleError
    end
  end

end


class TriangleError < StandardError
end
