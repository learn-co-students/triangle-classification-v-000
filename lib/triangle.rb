require "pry"

class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    if side1 >= (side2 + side3) || side2 >= (side1 + side3) || side3 >= (side2 + side1)
      raise TriangleError
    end

    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    end

    if side1 == nil || side2 == nil || side3 == nil
      raise TriangleError
    end
  end
binding.pry
  def kind
    if @side1 == @side2 && @side3 == @side1
      return :equilateral
    elsif @side1 == @side2 || @side3 == @side2 || @side3 == @side1
      return :isosceles
    else
      return :scalene
    end
  end


  class TriangleError < StandardError
    def message
    "you can not make a triangle like that!"
    end
  end



end
