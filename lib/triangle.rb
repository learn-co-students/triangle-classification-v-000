require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    self.a = a
    self.b = b
    self.c = c
  end

  def all_sides_equal
    a == b && a == c
  end

  def two_sides_equal
    if a == b && a != c
      true
    elsif a == c && a != b
      true
    elsif b == c && b != a
      true
    else
      false
    end
  end

  def no_sides_equal
    a != b && a != c && b != c
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
    elsif self.all_sides_equal
      :equilateral
    elsif self.two_sides_equal
      :isosceles
    elsif self.no_sides_equal
      :scalene
    end
  end
end

class TriangleError < StandardError
end
