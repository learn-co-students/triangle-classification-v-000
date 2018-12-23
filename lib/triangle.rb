class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
end

def kind 
 
     if legal_triangle == true && legal_triangle2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if side1 == side2 && side2 == side3 && side1 == side3
      :equilateral
    elsif side1 != side2 && side2 != side3 && side3 != side1
    :scalene 
    else 
      :isosceles
    end 
end 

 def legal_triangle 
    side1.positive? && side2.positive? && side3.positive?
  end 
  
  def legal_triangle2 
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end 

class TriangleError < StandardError
    # triangle error code
  end

end
