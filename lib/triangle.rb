class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    if (a <= 0 || b <= 0 || c <= 0) || 2 * [a, b, c].sort[2] >= a + b + c
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

class TriangleError < StandardError
end
