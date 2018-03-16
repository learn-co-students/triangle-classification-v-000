require 'pry'

class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == 0 || @b == 0 || @c == 0
        raise TriangleError
    elsif @a < 0 || @b < 0 || @c < 0
      raise TriangleError
    elsif @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

end


class TriangleError < StandardError
  def message
    "This is a custom error about triangles."
  end
end
# triangle = Triangle.new(0, 0, 0)
# binding.pry
