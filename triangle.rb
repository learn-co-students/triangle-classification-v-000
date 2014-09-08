# Write your code here.

class TriangleError < StandardError
end

class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [a,b,c]
    ineq = [a+b > c, a+c > b, b+c > a]

    if sides.min <= 0 || ineq.include?(false)
      raise TriangleError
    end

    if equilateral?
      :equilateral
    elsif scalene?
      :scalene
    elsif isosceles?
      :isosceles
    end
  end

  def equilateral?
    a == b && b == c
  end

  def scalene?
    a != b && a != c && b != c
  end

  def isosceles?
    (a == b && b != c) || (b == c && c != a) || (a == c && c != b)
  end
  
end