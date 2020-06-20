require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if valid_triangle?
      if @a == @b && @a == @c
        return :equilateral
      elsif @a == @b || @a == @c || @b == @c
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid_triangle?
    (@a > 0 && @b > 0 && @c > 0) && ((@a + @b) > @c && (@a + @c) > @b && (@b + @c) > @a)
  end

  class TriangleError < StandardError
  end

end
