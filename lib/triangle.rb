class Triangle
  attr_accessor :kind
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid_triangle? 
        raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid_triangle?
    if @a > 0 && @b > 0 && @c > 0
      if (@a + @b) > @c && (@b + @c) > @a && (@c + @a) > @b
        true
      else
        false
      end
    else
      false
    end
  end
end

class TriangleError < StandardError
  def message
    "Not a triangle"
  end
end