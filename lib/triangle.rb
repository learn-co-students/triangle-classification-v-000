class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if not_valid?
      raise TriangleError
    elsif (@a == @b) && (@a == @c)
      :equilateral
    elsif (@a == @b) || (@b == @c) || (@c == @a)
      :isosceles
    else
      :scalene
    end
  end

  def not_valid?
    (@a + @b <= @c || @b + @c <= @a || @c + @a <= @b) || [a, b, c].min <= 0
  end

end

class TriangleError < StandardError
  # triangle error code
end
