class Triangle

  def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
  end

    def kind
      unless @a + @b > @c && @a + @c > @b && @b + @c > @a && @a > 0 && @b > 0 && @c >0
        begin
          raise TriangleError
          # rescue TriangleError => error
          puts error.message
        end
      else
        if @a == @b && @b == @c
          return :equilateral
        elsif @a != @b && @b != @c && @a != @c
          return :scalene
        else
          return :isosceles
        end
      end
    end
end


class TriangleError < StandardError
  def message
    "Your triangle is not valid!"
  end
end
