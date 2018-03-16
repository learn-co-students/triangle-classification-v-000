class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError unless @a > 0 && @b > 0 && @c > 0 && @a < @b + @c && @b < @a + @c && @c < @a + @b
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c 
      :isosceles
    else
      :scalene
    end
  end
  
end

  class TriangleError < StandardError; end