class Triangle
  attr_accessor :a, :b, :c

  class TriangleError < StandardError; end

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError if invalid?
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    :scalene if scalene?
  end

  def equilateral?
    @a == @b && @b == @c
  end

  def invalid?
    ((@a + @b <= @c) || (@b + @c <= @a) || (@a + @c <= @b)) ||
      (@a.zero? && @b.zero? && @c.zero?)
  end

  def isosceles?
    (@a == @b || @a == @c) || (@b == @a || @b == @c)
  end

  def scalene?
    @a != @b && @b != @c
  end
end
