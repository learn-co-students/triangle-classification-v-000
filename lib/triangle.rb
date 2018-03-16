require 'pry'
class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    not_zero = @a > 0 && @b > 0 && @c > 0
    inequality = @a + @b > @c && @b + @c > @a && @a + @c > @b
    if not_zero && inequality
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
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
 # triangle error code
 def message
    "this is not a triangle"
 end
end
