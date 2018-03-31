class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !greater_than_zero? || !triangle_inequality
        raise TriangleError
    elsif
      a == b && b == c
      :equilateral
    elsif
      a == b && b != c || b == c && a != b || a == c && a != b
      :isosceles
    elsif
      a != b && a != c && b != c
      :scalene
    end
  end

  def greater_than_zero?
    a > 0 && b > 0 && c > 0
  end

  def triangle_inequality
    array = [a, b, c].sort
    array[0] + array[1] > array[2]
  end

  class TriangleError < StandardError
  end

end
