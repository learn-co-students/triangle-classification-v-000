require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    self.a = a
    self.b = b
    self.c = c
  end

  def illegal
    if a == 0 && b == 0 && c == 0
      true
    elsif a < 0 || b < 0 || c < 0
      true
    elsif a + b <= c
      true
    elsif a + c <= b
      true
    elsif b + c <= a
      true
    end
  end

  def kind
    if self.illegal == true
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b && a != c || a == c && a != b || b == c && b != a
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
  end
end

class TriangleError < StandardError
end
