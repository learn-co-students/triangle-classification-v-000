class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [@a, @b, @c]
  end

  def valid
    @a > 0 && @b > 0 && @c > 0
  end

  def ineq
    @a + @b > @c && @b + @c > @a && @c + @a > @b
  end

  def equilateral
    self.valid && @sides.uniq.length == 1 && self.ineq
  end

  def isosceles
    self.valid && @sides.uniq.length == 2 && self.ineq
  end

  def scalene
    self.valid && @sides.uniq.length == 3 && self.ineq
  end

  def kind
    if self.equilateral
      :equilateral
    elsif self.isosceles
      :isosceles
    elsif self.scalene
      :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
