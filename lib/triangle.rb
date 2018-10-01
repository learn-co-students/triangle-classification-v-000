class Triangle
  
  attr_accessor :length_one, :length_two, :length_three
 
 
 def initialize (length_one, length_two, length_three)
   @length_one = length_one 
   @length_two = length_two 
   @length_three = length_three
end

def kind 
  if @length_three != @length_two && @length_three != @length_one && @length_one != @length_two 
    return :scalene 
  elsif @length_two == @length_one && @length_two == @length_three 
  return :equilateral 
elsif @length_three == 0 || @length_two == 0 || @length_one == 0 
raise TriangleError
else 
  return :isosceles 
end 
   
end 

class TriangleError < StandardError 
 "peanuts"
  end 
end 


end 
