class Triangle 
   
 attr_accessor :length_one, :length_two, :length_three
 
 
  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  
  end

  def kind 
     if (length_one + length_two < length_three) || (length_one+length_three <= length_two) || (length_three+length_two < length_one)
       
        raise TriangleError
         
      elsif length_one <= 0 || length_two <= 0 || length_three <= 0
         
        raise TriangleError
         

      elsif (length_one == length_two) && (length_two == length_three)
         :equilateral 

      elsif (length_one == length_two) || (length_two == length_three) || (length_one == length_three)
         :isosceles  

      else 
          :scalene
      end      
    
  end
end





class TriangleError < StandardError 
  
  def message 
    "The first two sides do not exceed the length of the third, or one of the lengths equals zero."
  end 

end 

 


