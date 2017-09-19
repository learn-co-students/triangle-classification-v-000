class Triangle

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
      #more code
    end

    def kind
      if @a == @b && @a == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

end

class TriangleError < StandardError

    def triangle(a, b, c)
       sides = a, b, c
       raise TriangleError, "Illegal triangle, sides must be greater than zero" if a <= 0
       raise TriangleError, "Illegal triangle, sides cannot be negative" unless sides > 0
       raise TriangleError, "Illegal triangle, violates triangle inequality" if a + b <= c
     end

     end
