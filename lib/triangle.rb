# Triangle Class
class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

    raise TriangleError unless valid_triangle?
  end

  def valid_triangle?
    if @a <= 0 || @b <= 0 || @c <= 0
      false
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      false
    else
      true
    end
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
end

# TriangleError class
class TriangleError < StandardError
end
