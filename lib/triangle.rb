require "pry"
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if validation_method
      if @side_1 == @side_2 && @side_3 == @side_2
        :equilateral
      elsif
        @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
        :scalene
      else
        :isosceles
      end
    else
      raise TriangleError
    end
  end

  def validation_method
    (@side_1 > 0 && @side_2 > 0 && @side_3 > 0) && (@side_1 + @side_2 > @side_3 && @side_3 + @side_2 > @side_1 && @side_3 + @side_1 > @side_2)
  end

  class TriangleError < StandardError
    def message
      "Your triangle is not valid"
    end
  end

end
