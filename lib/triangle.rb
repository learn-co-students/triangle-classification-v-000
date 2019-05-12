class Triangle

  attr_accessor :s, :m, :l

  def initialize(a, b, c)
    @s, @m, @l = [a, b, c].sort

  end

  def kind
    raise TriangleError unless valid_triangle?
    if s == m && m == l
      :equilateral
    elsif
      s == m || m == l || s == l
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    is_positive = (s > 0 && m > 0 && l > 0)
    satisfies_inequality = (s + m) > l
    is_positive && satisfies_inequality
  end

  class TriangleError < StandardError
    # triangle error code
  end
end # Triangle
