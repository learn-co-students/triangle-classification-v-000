class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !triangle
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    else
      return :scalene
    end
  end

  def triangle
    (a + b > c) && (a + c > b) && (b + c > a) && a > 0 && b > 0 && c > 0
  end
end

class TriangleError < StandardError
end
