class Triangle

attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !is_triangle?
      raise TriangleError
      elsif a == b && a == c
      return :equilateral
      elsif a == b || a == c || b == c
      return :isosceles
      else
      return :scalene
    end
  end

  def is_triangle?
    ((a + b > c) && (b + c > a) && (a + c > b)) && (a > 0 && b > 0 && c > 0)
  end
end

class TriangleError < StandardError
end

