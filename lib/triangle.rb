class Triangle
  attr_accessor :side1, :side2, :side3 

  def initialize(side1, side2, side3) 
  	@side1 = side1
  	@side2 = side2 
  	@side3 = side3 
  end 

  def valid_triangle? 
  	triangle = [@side1, @side2, @side3] 
  	triangle.all? { |side| side > 0 } #|| !triangle.any? { |side| side <  } need to add triangle inequality check in a functional way 
  end 

  def kind  
  	raise TriangleError if !valid_triangle? 
  	if side1 == side2 && side2 == side3 
  		:equilateral 
  	elsif side1 == side2 || side2 == side3 || side1 == side3 
  		:isosceles 
  	else 
  		:scalene 
  	end
  end 

  class TriangleError < StandardError 
  end 

end
