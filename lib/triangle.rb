class Triangle
  attr_accessor :side_a, :side_b, :side_c
 def initialize(side_a, side_b, side_c)
   @side_a = side_a
   @side_b = side_b
   @side_c = side_c
 end
 def kind
   kind=nil
   if (side_a<=0 || side_b<=0 || side_c<=0) ||
     (side_a+side_b<=side_c || side_a+side_c<=side_b || side_b+side_c<=side_a)
     raise TriangleError

   elsif (side_a == side_b && side_a == side_c)
     kind = :"equilateral"
     #binding.pry
   elsif (side_a == side_b || side_a == side_c || side_b == side_c)
     kind = :"isosceles"
   elsif (side_a != side_b && side_a != side_c && side_b != side_c)
     kind = :"scalene"
   else

   end

 end

end
class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side"
  end
end
