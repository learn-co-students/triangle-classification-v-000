require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    self.a = a
    self.b = b
    self.c = c
  end

  def all_sides_equal
    self.a == self.b && self.a == self.c
  end

  def two_sides_equal
    if self.a == self.b && self.a != self.c
      true
    elsif self.a == self.c && self.a != self.b
      true
    elsif self.b == self.c && self.b != self.a
      true
    else
      false
    end
  end

  def no_sides_equal
    self.a != self.b && self.a != self.c && self.b != self.c
  end

  def illegal
    if self.a == 0 && self.b == 0 && self.c == 0
      true
    elsif self.a < 0 || self.b < 0 || self.c < 0
      true
    elsif self.a + self.b <= self.c
      true
    elsif self.a + self.c <= self.b
      true
    elsif self.b + self.c <= self.a
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
