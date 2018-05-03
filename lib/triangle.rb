require 'pry'

class Triangle

  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    inequality

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif a != b && b != c
      :scalene
    end


  end

  def inequality
    if (a <= 0 && b <= 0 && c <= 0) || (a + b <= c || b + c <= a || a + c <= b)
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
