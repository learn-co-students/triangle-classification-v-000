class Triangle
  # write code here
    def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    def kind
        if (@side1 <= 0) or (@side2 <= 0) or (@side3 <= 0)
            raise TriangleError
        elsif (@side1 + @side2 <= @side3) or (@side1 + @side3 <= @side2) or (@side3 + @side2 <= @side1)
            raise TriangleError
        elsif (@side1 == @side2) and (@side1 == @side3)
            return :equilateral
        elsif (@side1 == @side2) or (@side1 == @side3) or (@side2 == @side3)
            return :isosceles
        elsif (@side1 != @side2) and (@side2 != @side3)
            return :scalene
        end
    end



end

class TriangleError < StandardError

end
