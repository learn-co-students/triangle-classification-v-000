class Triangle
  attr_accessor :a, :b, :c, :kind

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

def kind

  if !valid?
      raise TriangleError
    elsif a == c && b == a && c == b
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    triangle = [a, b, c].all? {|side| side > 0}
    triangle && (c + a > b) && (b + c > a) && (b + a > c)
  end
end

class TriangleError < StandardError
end
