class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(length_1, length_2, length_3)
    @a = length_1
    @b = length_2
    @c = length_3
  end
  
  def kind
    if (@a > 0 && @b > 0 && @c > 0) && (@a + @b > @c && @b + @c > @a && @c + @a > @b)
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @c == @a
        :isosceles
      elsif @a != @b && @b != @c
        :scalene
      else #not a triangle
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end