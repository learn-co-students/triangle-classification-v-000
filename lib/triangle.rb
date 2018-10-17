class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def triangle 
    side1.positive? && side2.positive? && side3.positive?
  end 
  
  def triangle2 
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end 
  
  def kind 
    if triangle == true && triangle2 == true 
      puts true 
    else 
      raise TriangleError
    end 
    
    if @side1 == @side2 && @side1 == @side3 && @side2 = @side3
      :equilateral
    else if @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      :scalene
    else if @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    end 
  end 
  end 
end 

  class TriangleError < StandardError
    # triangle error code
  end
end