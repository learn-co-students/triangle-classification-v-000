class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @c <= 0 || @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
      puts error.message
    end
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @c || @b == @c || @a == @b
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Lengths cannot be 0 or negative numbers. Also triangle inequality cannot be violated."
  end

end
