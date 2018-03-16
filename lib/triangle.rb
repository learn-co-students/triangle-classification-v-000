class Triangle
    attr_accessor :length_1, :length_2, :length_3

    def initialize(length_1, length_2, length_3)
        @length_1 = length_1
        @length_2 = length_2
        @length_3 = length_3
    end

    def kind
        if length_1 <= 0 || length_2 <= 0 || length_3 <= 0
            raise TriangleError
        elsif length_1 + length_2 <= length_3 || length_3 + length_1 <= length_2 || length_2 + length_3 <= length_1
            raise TriangleError
        elsif length_1 == length_2 && length_2 == length_3 && length_1 == length_3
            return :equilateral
        elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
            return :isosceles
        elsif length_1 != length_2 && length_2 != length_3 && length_1 != length_3
            return :scalene
        else
            false
        end
    end

end

class TriangleError < StandardError
    def message
        "invalid triangle: please look up the definition of a triangle."
    end
end
