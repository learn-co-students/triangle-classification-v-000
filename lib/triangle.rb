class Triangle
    attr_accessor :side1, :side2, :side3

    def initialize(side1, side2, side3)
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    def kind
        check_triangle
        if side1 == side2 && side1 == side3
            :equilateral
        elsif side1 == side2 || side1 == side3 || side2 == side3
            :isosceles
        else
            :scalene
        end
    end

    def check_triangle
        if (side1 >= 0 && side2 >= 0 && side3 >= 0) && (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
            true
        else
            raise TriangleError
        end
    end
end


class TriangleError < StandardError
    def message
        "Your triange is not a legal triange, all sides must be greater than
        zero, and not sides may be negative values. In addition, the sum of
        any two sides must be greater than the remaining side."
    end
end
