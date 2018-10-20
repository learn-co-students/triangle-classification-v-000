class Triangle
  
  attr_accessor :side1, :side2, :side3, :triangle_sides
  
  def initialize(side1, side2, side3)
    @triangle_sides = []
    @triangle_sides << @side1
    @triangle_sides << @side2
    @triangle_sides << @side3
   
  end 

  def valid?(triangle_sides)
    if triangle_sides[0] + triangle_sides[1] < triangle_sides[2]
      false 
    elsif triangle_sides[0] <= 0 
      false 
    elsif triangle_sides[1] <= 0
      false 
    elsif triangle_sides[2] <= 0
      false  
    else 
      true  
    end 
  end 
  
  
  def kind
    if valid? != true 
      raise TriangleError
    elsif triangle_sides.uniq.length == 1
        :equilateral
    elsif triangle_sides.uniq.length == 2 
        :isosceles 
    else 
      :scalene 
    end 
  end 


   class TriangleError < StandardError
    # triangle error code
  end
  
end
