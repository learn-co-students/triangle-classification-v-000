require'pry'
class Triangle
    # write code here
    attr_accessor :leftlength, :rightlength, :bottomlength

    SIDES = []

    def initialize(leftlength, rightlength, bottomlength)
        @leftlength = leftlength
        @rightlength = rightlength
        @bottomlength = bottomlength
        SIDES << leftlength << rightlength << bottomlength
    end

    def kind
        # binding.pry
        # SIDES.sort!
        if SIDES.all? { |e|  e > 0}
            if leftlength == rightlength && leftlength == bottomlength
                :equilateral
            elsif (leftlength == rightlength && leftlength + rightlength > bottomlength) ||
                (leftlength == bottomlength && leftlength + bottomlength > rightlength) ||
                (rightlength == bottomlength && bottomlength + rightlength > leftlength)
                :isosceles
            else
                :scalene
            end
        else
            raise TriangleError
        end
    end

    class TriangleError < StandardError

    end
end

Triangle.new(10, 11, 12).kind
Triangle.new(10, 10, 2).kind
Triangle.new(10, 10, 10).kind
Triangle.new(4, 3, 4).kind
