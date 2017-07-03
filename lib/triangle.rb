class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def invalid_triangle?
    [a, b, c].any? {|side| side <= 0} || (a + b <= c) || (b + c <= a) || (a + c <= b)
  end

  def kind
    #binding.pry
    if invalid_triangle?
      raise TriangleError
    elsif a == b && b == c
      return :equilateral
    elsif (a == b && b != c) || (a == c && b != a) || (b == c && b != a)
      return :isosceles
    elsif a != b && b != c
      return :scalene
    end
  end

end

  class TriangleError < StandardError
  end
