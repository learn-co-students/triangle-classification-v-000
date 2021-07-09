class Triangle
  attr_accessor :s1, :s2, :s3, :t_type

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end    

  #Is this a valid triangle? 
  #Raise error if not, (i.e. if any sides are not larger than 0. Or if The sum of the lengths of any two sides is smaller than the 3rd)
  def kind
    if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= @s1 || (s3 + s1) <= s2
      begin 
        raise TriangleError
          #puts error.message
      end   
    
    #check for triangle types
    elsif s1 == s2 && s1 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
       :isosceles
    else
       :scalene
    end
  end
 
  class TriangleError < StandardError
    def message
      puts "Is not a triangle"
    end
  end
end

  #equilateral: all 3 sides are the same.
  #Isocele: has 2 equal sides.
  #Scalene :no sides are equal.