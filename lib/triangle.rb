class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.valid?
      if @a != @b && @b != @c && @c != @a
        :scalene
      elsif (@a == @b || @b == @c || @c == @a) && !(@a == @b && @b == @c && @c == @a)
        :isosceles
      elsif @a == @b && @b == @c && @c == @a
        :equilateral
      end
    else
      raise TriangleError
    end
  end

  def valid?
    (@a + @b > @c && @b + @c > @a && @c + @a > @b) && (@a > 0 && @b > 0 && @c > 0)
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle. Check your triangle lengths."
    end
  end

end
