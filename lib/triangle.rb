class Triangle

    attr_reader :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3


    end

    def kind

        if valid_triangle?
            if equilateral?
                return :equilateral
            elsif isosceles?
                return :isosceles
            elsif scalene?
                return :scalene
            end
        else
            raise TriangleError
        end
    end


        def equilateral?
            side1 == side2 && side1 == side3
        end

        def isosceles?
           (side1 == side2 && side1 != side3) || (side1 == side3 && side1 != side2) || (side2 == side3 && side2 != side1)
        end

        def scalene?
            side1 != side2 && side1 != side3 && side2 != side3
        end

            def triangle_inequality?
            side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
        end

         def valid_triangle?
            [side1, side2, side3].all? {|sides| sides > 0} && self.triangle_inequality?
        end

end




class TriangleError < StandardError


end
