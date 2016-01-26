class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b <= @c || @a + @c <= @b || @c + @b <= @a
      raise TriangleError
    elsif @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b == @c || @a == @c
      return :isosceles    
    else
      return :scalene
    end
  end

end

  class TriangleError < NameError
  end