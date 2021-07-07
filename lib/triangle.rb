class Triangle
  attr_accessor :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a || @a == 0 || @b == 0 || @c == 0
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b == @c || @a == @c
      return :isosceles
    elsif
      @a != @b || @b != @c || @a != @c
      return :scalene
    end
  end

  class TriangleError < StandardError
    #triangle error code
  end

end
