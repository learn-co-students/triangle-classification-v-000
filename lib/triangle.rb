class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :l1, :l2, :l3

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if not_valid?
      raise TriangleError
    elsif @a == @b && @a == @c
      :equilateral
    elsif @a == @c || @b == @c || @a == @b
      :isosceles
    else
      :scalene
    end
  end

  def not_valid?
    (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a) || [@a, @b, @c].min <= 0
  end

end

class TriangleError < StandardError
  #error code
end
