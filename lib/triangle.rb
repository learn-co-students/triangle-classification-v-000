class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    case
    when @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    when ((@a + @b) <= @c) || ((@a + @c) <= @b) || ((@b + @c) <= @a)
      raise TriangleError
    when @a == @b && @b == @c
      :equilateral
    when @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end
