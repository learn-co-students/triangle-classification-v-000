class Triangle
    # write code here
    attr_accessor :a, :b, :c

    def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
    end

    def kind
        validate_triangle
        if (a == b) && (b == c)
            :equilateral
        elsif (a == b) || (b == c) || (a == c)
            :isosceles
        else
            :scalene
        end
    end

    def validate_triangle
        sides = [a, b, c]
        triangle = [ (a + b > c), (a + c > b), (b + c > a) ]
        sides.each do |side|
            triangle << false if side <= 0
        end
        raise TriangleError if triangle.include?(false)
    end
end

class TriangleError < StandardError
    def message
        "This is not a valid triangle"
    end
end
