class Triangle
  # write code here
  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
    @sides = [a, b, c]
    @no_side = ((a + b + c)/ 2.0)
  end

  def kind
    raise TriangleError if @sides.any? {|side| side <= 0}
    raise TriangleError if ((@no_side - @a) * (@no_side - @b) * (@no_side - @c) <= 0)
    if ((@a == @b) && (@a == @c) && (@b == @c))
      return :equilateral
    elsif ((@a == @b) || (@a == @c) || (@b == @c))
      return :isosceles
    else
      return :scalene
  end
end

end



class TriangleError < StandardError

 # triangle error code
end
