class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1 ,side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
   if (@side1 + @side2 + @side3 == 0) || (@side1 < 0 && @side2 < 0 && @side3 < 0) || ((@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2)
     puts "ifffff --> #{@side1} ** #{@side2} ** #{@side3}"
      begin
        raise TriangleError
      end
   else
     findType(@side1,@side2,@side3)
   end
 end
 
 def findType(a,b,c)
    if a == b && b == c && c == a
        :equilateral
    elsif a != b && b != c && c != a
        :scalene
    else
        :isosceles
    end
 end
 
end

class TriangleError < StandardError
end

