require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
  end

  def kind
    sides = [side1, side2, side3].sort
    if sides[0] <= 0 || (sides[0] + sides[1]) <= sides[2]
      #binding.pry
      raise TriangleError
    elsif sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    else
     :scalene
    end
  end

  class TriangleError < StandardError

  end
end

=begin
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
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end

end
=end
