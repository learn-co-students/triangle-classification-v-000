class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    case
    when @a <= 0 || @b <= 0 || @c <= 0 then raise TriangleError
    when @a + @b <= @c || @a + @c <= @b || @b + @c <= @a then raise TriangleError
    when @a == @b && @b == @c then :equilateral
    when @a == @b || @a == @c || @b == @c then :isosceles
    else :scalene
    end
  end

end

class TriangleError < StandardError
end
