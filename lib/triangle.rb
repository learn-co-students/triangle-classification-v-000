class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def negative?
    @a <= 0 || @b <= 0 || @c <= 0
  end

  def bad_sides?
    (@a + @b) <= @c || (@a + @c) <= @b || (@b + @c) <= @a
  end

  def kind
    kind = nil
      if self.negative? || self.bad_sides?
          raise TriangleError
      elsif @a == @b && @a == @c
        kind = :equilateral
      elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
        kind = :isosceles
      else
        kind = :scalene
      end
    kind
  end

end

class TriangleError < StandardError
end
