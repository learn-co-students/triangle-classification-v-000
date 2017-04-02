class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid_triangle?
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    ((a + b > c) && (a + c > b) && (b + c > a)) && ![a, b, c].include?(0) ? true : false
  end
end

class TriangleError < StandardError
end
