class Triangle
  attr_reader :a, :b, :c

  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    if @a + @b > @c && @a + @c > @b && @c + @b > @a
      case
      when @a == @b && @b == @c
          :equilateral
        when @a == @b || @b == @c || @a == @c
          :isosceles
        else
          :scalene
        end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end
