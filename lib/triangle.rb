require 'pry'
class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
     @side1 = side1
    @side2 = side2
    @side3 = side3
    raise TriangleError, "Not a valid triangle" if side1 <= 0 || side2 <= 0 || side3 <= 0
    raise TriangleError, "Illegal triangle" if side1 >= side2+side3 || side2 >= side1+side3 || side3 >= side1+side2
  end

  def kind
    #binding.pry
    if @side1 == @side2 && @side2 == @side3
      :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles

      elsif @side1 != @side2 && @side2 != @side3
      return :scalene

 #elsif @side1<=0||@side2<=0||@side3<=0|| @side1+@side2 < @side3 || @side2+@side3 < @side1 || @side1+@side3 < @side2
    #begin

      # raise TriangleError
      #rescue TriangleError => error
       #   puts error.message
    end
  end
end

class TriangleError < Exception
end
