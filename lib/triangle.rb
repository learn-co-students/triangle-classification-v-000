class Triangle
  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ((a <= 0 || b <= 0 || c <= 0)) || !((a + b > c) && (a + c > b) && (c + b > a))
      raise TriangleError
    elsif a == b && a == c 
      return :equilateral
    elsif (b == c) || (c == a) || (a == b)
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "These measurements are not a Triangle.  Try again Champ!"
  end
end