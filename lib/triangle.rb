class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    @a, @b, @c = [@a, @b, @c].sort
    raise TriangleError if @a <= 0 or @a + @b <= @c
    return :equilateral if @a == @c
    return :isosceles if @a == @b || @b == @c
    return :scalene
  end

  class TriangleError < StandardError

  end
end
