class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || (@a + @b <= @c) || (@b + @c <= @a) || (@a + @c <= @b)
      raise TriangleError
    elsif @a == @b && @b == @c 
      :equilateral
    elsif @a == @b && @b != @c || @a == @c && @a != @b || @b == @c && @b != @a 
      :isosceles
    elsif @a != @b && @a != @c && @b != @c 
      :scalene
    end

  end

end

class TriangleError < StandardError
end
