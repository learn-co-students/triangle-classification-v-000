require 'pry'

class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene
    else
      :isosceles
  end
end

def validate_triangle
  true_triangle = [(a + b > c), (b + c > a), (a + c > b)]
  [a,b,c].each{|sides| true_triangle << false if sides <= 0}
  raise TriangleError if true_triangle.include?(false)
end

end

class TriangleError < StandardError
end
