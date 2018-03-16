class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a <= 0) || (b <= 0) || (c <= 0) || (a + b <= c) || (a + c <= b) || (b + c <= a)
      raise TriangleError
    elsif a == b && b== c
      return :equilateral
    elsif a != b && b != c && a != c
      return :scalene
    else
      return :isosceles
    end
  end
end

class TriangleError < StandardError; end

