class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError unless
      @b > 0 && @a > 0 && @c > 0 && @b < @a + @c && @a < @b + @c && @c < @a + @b
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
end


class TriangleError < StandardError
end
