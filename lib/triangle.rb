class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validade_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end

  def validade_triangle
    real_triangle = [(a + b > c), (a + c > b), (c + b > a)]
    [a, b, c].each {|s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

end

class TriangleError < StandardError
   # triangle error code
end