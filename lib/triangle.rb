require 'pry'

class Triangle
  
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    
    @a = a 
    @b = b 
    @c = c
    
    valid?
  end 
  
  def kind 
    
    
    if @a == @b && @a == @c 
      return :equilateral 
    elsif @a != @b && @a != @c && @b != @c 
      return :scalene 
    else 
      return :isosceles
    end
    
    
  end 

  def valid? 
   
    if (@a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @a + @c <= @b || @c + @b <= @a)    
        
        raise TriangleError
    end 
  end 

class TriangleError < StandardError
  def message 
    "The measurements you entered cannot constitute a valid triangle."
  end 
end 

end

