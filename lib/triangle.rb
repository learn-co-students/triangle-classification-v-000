class Triangle
  attr_accessor :a_length, :b_length, :c_length
 def initialize(a,b,c)
   @a_length = a_length
   @b_length = b_length
   @c_length = c_length
 end
 def kind
   kind=nil
   if (a_length == b_length == c_length)
     kind = :"equilateral"
   elif
     kind = :"next"
   end
 end
end
