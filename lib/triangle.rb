require 'pry'
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
def kind 
  if triangle_check.include?(false)
        raise TriangleError
  else  
     if side1 == side2 && side1 == side3
       :equilateral
     elsif side1 != side2 && side1 != side3 && side2 != side3
      :scalene
    else
      :isosceles
    end
  end
end
def triangle_check
  triangle_c = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
  
  
end

  class TriangleError < StandardError
    def message
      "Triangle is invalid."
    end
  end

end
