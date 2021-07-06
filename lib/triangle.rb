class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    side1, side2, side3 = [@side1, @side2, @side3].sort
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || (side1 + side2) <= side3
      begin 
        raise TriangleError
      end 
    end
    
    if @side1 == @side2 && @side1 == @side3
      :equilateral 
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles 
    else 
      :scalene 
    end
  end 
  
  class TriangleError < StandardError
  end 
  
end
