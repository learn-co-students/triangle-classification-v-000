require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind

    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0) || ((@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1))       
      
          raise TriangleError
#        rescue TriangleError => error
 #         puts error.message
  #      end

    else

        if @side1 == @side2 && @side1 == @side3
          :equilateral
        elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
          :isosceles
        else
          :scalene
        end

    end

  end

  def validate_triangle




  end


end

class TriangleError < StandardError
#Sum of length of 2 sides exceeds 3rd
#each side larger than 0
 # def message
  #  "error!"
 # end



end