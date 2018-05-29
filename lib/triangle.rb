class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end   
  
  def kind 
    
  end   
  
  class TriangleError < StandardError 
  end   
end
