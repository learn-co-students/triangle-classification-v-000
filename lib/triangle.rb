class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate
    if a == b && b == c
    :equilateral
    elsif a == b || b ==c || a==c
    :isosceles
    else
    :scalene
    end
  end

  def validate
    sides = a + b > c && a + c > b && b + c > a
    vaild = [a, b, c].all?(&:positive?) && sides
    raise TriangleError unless vaild
    end
end

class TriangleError < StandardError
end
