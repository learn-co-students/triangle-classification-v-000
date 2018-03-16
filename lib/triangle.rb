
require 'pry'
class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    #:equilateral
    #:isosceles
    #:scalene



      if @side1 > 0 && @side2 > 0 && @side3 > 0
        if @side1 < @side2 + @side3 && @side2 < (@side1 + @side3) && @side3 < (@side1 + @side2)

            if @side1 == @side2 && @side2 == @side3
               :equilateral
            elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
               :isosceles
            elsif @side1 != @side2 && @side2 != @side3
               :scalene
            end
        else

          raise TriangleError
        end
    else

        raise TriangleError
    end


  end
end
#####################
class TriangleError < StandardError
  def message
    puts "This is your error message haha"
  end
end
