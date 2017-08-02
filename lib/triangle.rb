class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a > 0 && @b > 0 && @c > 0 && valid?
      if @a == @b && @b == @c
        :equilateral
      elsif (@a == @b && @b != @c) || (@b == @c && @c != @a) || (@c == @a && @a != @b)
        :isosceles
      elsif @a != @b && @b != @c && @c != @a
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
  end
end


  class TriangleError < StandardError

  end
