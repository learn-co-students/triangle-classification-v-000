class Triangle
    attr_accessor :kind

    def initialize(length, length2, length3)
        if length <= 0 || length2 <= 0 || length3 <= 0
            raise TriangleError
        end
        lengths = [length, length2, length3].sort
        if lengths[0] + lengths[1] <= lengths[2]
            raise TriangleError
        end
        if length == length2 && length == length3
            @kind = :equilateral
        elsif length == length2 || length == length3 || length2 == length3
            @kind = :isosceles
        elsif length != length2 && length != length3
            @kind = :scalene
        end
    end

    class TriangleError < StandardError
    end
end
