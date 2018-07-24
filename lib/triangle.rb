require 'pry'
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle?
    if a == b && b == c
        :equilateral
    elsif a == b || b == c || a == c
        :isosceles
    else
        :scalene
    end
  end

  def valid_triangle?
      real_triangle = [(a + b > c), (b + c > a), (a + c > b)]
      [a, b, c].each { |x| real_triangle << false if x <= 0 }
        raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end
end
