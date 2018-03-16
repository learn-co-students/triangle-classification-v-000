class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a > 0 && @b > 0 && @c > 0 && follows_inequality_rule?
      if @a == @b && @a == @c && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      elsif @a != @b && @a != @c && @b != @c
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def follows_inequality_rule?
    (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
  end
end

class TriangleError < StandardError
  def message
  end
end
