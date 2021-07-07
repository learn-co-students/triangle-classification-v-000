class Triangle


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a || @a <= 0 || @b <= 0 || @c <= 0
    return :equilateral if @a == @b && @a == @c && @b == @c
    return :isosceles if @a == @b || @a == @c || @b == @c
    return :scalene if @a != @b && @a != @c && @b != @c
  end

  class TriangleError < StandardError
  end

end
