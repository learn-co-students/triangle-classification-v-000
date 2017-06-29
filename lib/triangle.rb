require 'pry'

class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def invalid?
    [a,b,c].any? {|s| s <= 0} || (a+b <= c) || (a+c <= b) || (b+c <= a)
  end

  def kind
    if self.invalid?
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif (a == b && b != c) || (b == c && b != a) || (a == c && b != a)
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end
end

class TriangleError < StandardError
end
