class Triangle
  require 'pry'
  attr_accessor :side1, :side2, :side3


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle
    ((@side1 + @side2) > @side3 && (@side2 + @side3) > @side1 && (@side1 + @side3) > @side2) && @side1 > 0 && @side2 >0 && @side3 > 0
  end

  def kind

    if triangle
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError

    end
  end
end


class TriangleError < StandardError
  def message
    "Your dimensions don't represent a triangle."
  end
end
