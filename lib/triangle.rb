class Triangle
  attr_accessor :side_one, :side_two, :side_three, :kind
  
  
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind
    if (@side_one * @side_two * @side_three) == 0 || (@side_one + @side_two) <= @side_three || (@side_two + @side_three) <= @side_one || (@side_three + @side_one) <= @side_two 
    
 begin
    raise TriangleError
    puts error.message
  end 
 elsif side_one == side_two && side_one == side_three
    self.kind = :equilateral 
  
 elsif side_one == side_two || side_one == side_three || side_two == side_three
    self.kind = :isosceles 
  else
    self.kind = :scalene
    end 
  end 
end 

class TriangleError < StandardError
  def message 
    puts "not a triangle"
  end 
end 
  

