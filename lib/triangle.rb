class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [@a, @b, @c].any? {|i| i <= 0} || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      begin
        raise TriangleError
      end
    elsif @a == @b && @a == @c
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
    "Impossibruu!"
  end
end
