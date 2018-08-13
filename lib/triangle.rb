class Triangle
  
  
  
def initialize(side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end 

def kind
  if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
    raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
    raise TriangleError
   elsif @side_one == @side_two && @side_one == @side_three
    return :equilateral
  elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
    return :scalene
  elsif @side_one == @side_two && @side_two != @side_three || @side_one == @side_three && @side_two != @side_three || @side_two == @side_three && @side_two != @side_one
    return :isosceles
    
    

end 
end 
  

  
  
class TriangleError < StandardError
  def message 
    "Not a Triangle message!"
end
end 
end 