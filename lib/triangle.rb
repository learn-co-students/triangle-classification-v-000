require 'pry'

class Triangle
  
  def initialize(x, y, z)
    @side1 = x 
    @side2 = y 
    @side3 = z 
  end
  
  def kind 
    if @side1 <= 0 or @side2 <= 0 or @side3 <= 0 
      raise TriangleError
     elsif ((@side1 + @side2) < @side3) 
      raise TriangleError
     elsif  (@side1 + @side3) == @side2 
      raise TriangleError 
     elsif ((@side2 + @side3) < @side1) 
      raise TriangleError 
    elsif @side1 == @side2 and @side2 == @side3
      :equilateral
    elsif @side2 == @side3 or @side1 == @side3 or @side1 == @side2 
      :isosceles 
    elsif @side1 != @side2 and @side2 != @side3 and @side1 != @side3 
      :scalene 

    end 
  end 
end

  class TriangleError < StandardError
  end