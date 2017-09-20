class Triangle

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      # sides = @a, @b, @c

      if @a <= 0 || @b <= 0 || @c <= 0 #addresses no size and negative size
          raise TriangleError,   "Illegal triangle, sides must be greater than zero"
        end

      if @a + @b <= @c || @b + @c <= @a || @c + @a <= @b #addresses inequality rule
          raise TriangleError, "Illegal triangle, violates triangle inequality"
        end

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

end
