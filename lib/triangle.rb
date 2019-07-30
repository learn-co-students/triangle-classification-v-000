class Triangle


  attr_accessor :equilateral, :isosceles, :scalene, :s1, :s2, :s3, :sides
  
  
  def initialize(s1, s2, s3)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene       
    @s1 = s1 
    @s2 = s2
    @s3 = s3
    @sides = [s1, s2, s3]
  end 
  
  
  class TriangleError < StandardError
    def message
      puts "This is not a triangle."
    end 
  end 
  
  
   def kind
    if (s1 + s2 <= s3) || (s1 + s3 <= s2) || (s2 + s3 <= s1)  
     
      begin
        raise TriangleError
          puts error.message
        end 
        
   else
     
      if sides.uniq.count == 1
        :equilateral
      elsif sides.uniq.count == 2
        :isosceles
      else sides.uniq.count == 3
        :scalene
      end
    end
  end
    
    
end
