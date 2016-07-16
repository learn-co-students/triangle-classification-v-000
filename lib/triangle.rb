class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind(a, b, c)
    if ((a == b) && (a == c) && (b == c))
      return :equilateral
    elsif ((a == b) || (a == c) || (b == c))
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError <  StandardError

end
