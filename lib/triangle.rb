require 'pry'

class Triangle

attr_accessor :a, :b, :c, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

   def kind
      if @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
         raise TriangleError
        elsif @a <= 0 || @b <= 0 || @c <= 0
          raise TriangleError
        elsif @a == @b && @a == @c && @c == @b
          :equilateral
        elsif @a == @b || @a == @c || @b == @c
          :isosceles
        else
          :scalene
        end
    end
end

    class TriangleError < StandardError
    end
