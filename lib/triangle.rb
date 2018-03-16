class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    raise TriangleError if @a <= 0 || @b <= 0 ||  @c <= 0 # could save into lengths in an array and itterate over  length_array to check if zero
    raise TriangleError if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a

    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
"Triangles can't have sides that are 0 or less.\nThe longest side of a triangle cannot be greater than the sum of the other two sides. I.E a + b must be greater than c"
end
