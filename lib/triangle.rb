class Triangle
  # triangle code
  attr_accessor :side_a, :side_b, :side_c, :kind
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b 
      @side_c = side_c
  end
 
  class TriangleError < StandardError
    
    def message
      puts "not a triangle"
    end
    
  end
  
  
  
  def kind
    
    if (side_a + side_b) <= side_c || (side_a + side_c) <= side_b || (side_b + side_c) <= side_a ||
      (side_a * side_b * side_c) == 0
    
    begin 
      raise TriangleError
        puts error.message
    end
      
    elsif side_a == side_b && side_a == side_c
      self.kind = :equilateral
      
    elsif side_a == side_b || side_a == side_c || side_b ==  side_c
      self.kind = :isosceles
      
    else
      self.kind = :scalene
    
    end
  end
  
end