class Triangle
  attr_reader :side_1, :side_2, :side_3, :total

  def initialize(side_1, side_2, side_3)
    @side_1=side_1
    @side_2=side_2
    @side_3=side_3
  end

  def kind
      if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
        return raise TriangleError
      elsif (@side_1 + @side_2) <= @side_3 || (@side_2 +@side_3) <= @side_1 || (@side_3 + @side_1) <= @side_2
        return raise TriangleError
      elsif @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      else
        :scalene
      end
    end
  end


class TriangleError < StandardError
 def message
   "The triangle you have entered is not valid. All of the sides must be greater than zero, and the sum of any two lengths must always exceed the third length."
 end

end
