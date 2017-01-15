class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  # def kind
  #   valid_check
  #   type
  # end

  def kind
    valid_check
    if (@a == @b) && (@a == @c)
      return :equilateral
    elsif (@a == @b) || (@a == @c) || (@b == @c)
      return :isosceles
    else
      return :scalene
    end
  end

  def valid_check
    raise TriangleError if ((a || b || c) <= 0) || (a >= (b + c)) || (b >= (a + c)) || (c >= (a + b))
  end

end

class TriangleError < StandardError
end
