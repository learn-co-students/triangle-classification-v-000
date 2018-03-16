class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !istriangle?
      raise TriangleError
    elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def istriangle?
    ((a + b > c) && (a + c > b) && (c + b > a)) && (a > 0 && b > 0 && c > 0)
  end
end

  class TriangleError < StandardError
    puts "The sides don't represent a valid triangle."
  end
