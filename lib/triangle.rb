require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    unless (a + b > c && a + c > b && b + c > a) && [a, b, c].all? {|n| n > 0}
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
