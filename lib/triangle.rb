=begin
Scalene: A scalene triangle is a triangle that has no equal sides.
Isosceles: An isosceles triangle is a triangle that has two equal sides.
Equilateral: An equilateral triangle is a triangle that has three equal sides.
The sum of the lengths of any two sides of a triangle always exceeds the length
of the third side. This is a principle known as the triangle inequality.
Further, each side must be larger than 0.
Triangle inequalitiy theorem:
a < b + c
b < a + c
c < a + b
=end
require 'pry'

class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

    def validate_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
        real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
      end
    end

    class TriangleError < StandardError
    end
end
