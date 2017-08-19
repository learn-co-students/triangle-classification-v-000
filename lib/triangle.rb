class Triangle
  # write code here
  attr_accessor :a, :b, :c, :TriangleError

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c


  end

  def kind
    triangle_test
    if @a == @b && @a == @c
      :equilateral
    elsif
     @a == @b || @b == @c || @a == @c
      :isosceles
    else
      @a != @b || @b != @c || @a != @c
      :scalene
    end
end

def triangle_test
  if @a <= 0 || @b <= 0 || @c <= 0
         raise TriangleError
       elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
        raise TriangleError
      else
        false
  end
end

end

class TriangleError < StandardError
end
