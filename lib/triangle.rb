require 'pry'
class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !valid?(@a, @b ,@c)
      raise TriangleError
    else
      get_type(@a, @b, @c)
    end

  end

  def valid?(a,b,c)
    return ((a + b > c) && (a + c > b) && (b + c > a) && (b + a > c) && (c + a > b) && (c + b > a) && a > 0 && b > 0 && c > 0)
  end

  def get_type(a, b, c)
    return :equilateral if a==b && b==c
    if a == c || b == c || a == b
      return :isosceles
    else
      return :scalene
    end
  end


end

class TriangleError < StandardError
  def message
    "The triangle is not valid"
  end
end
