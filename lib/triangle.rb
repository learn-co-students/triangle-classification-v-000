class Triangle

  def initialize(a, b, c)
    @sides_arr = [a, b, c]
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@sides_arr.any? {|x| x <= 0}) || ((@a + @b) <= @c) || ((@a + @c) <= @b) || ((@c + @b) <= @a)
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    else
      return :scalene
    end
  end



end

class TriangleError < StandardError
  def message
    "this is the wrong type of triangle"
  end
end
