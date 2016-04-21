class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if equality && @a == @b && @b == @c
      :equilateral
    elsif equality && ((@a == @b && @b != @c) || (@a == @c && @b != @a) || (@b == @c && @a != @b))
      :isosceles
    elsif equality && (@a != @b && @b != @c && @a != @c)
      :scalene
    elsif @a <= 0 || @b <= 0 || @c <= 0 
      raise TriangleError
    elsif (@a + @b < @c) && (@c + @b < @a) && (@a + @c < @b)
      raise TriangleError
    else
      raise TriangleError
    end 
  end

  def equality
    (@a > 0 && @b > 0 && @c > 0 ) && (@a + @b > @c && @c + @b > @a && @a + @c > @b) 
  end

end

class TriangleError < StandardError
  def message 
      "That is not a valid triangle!"
  end
end

