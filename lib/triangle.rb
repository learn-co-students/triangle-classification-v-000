class Triangle
  # write code here
  attr_reader :a, :b, :c

   def initialize(a, b, c)
     @a = a
     @b = b
     @c = c
   end

   def kind
     if a <= 0 || b <= 0 || c <= 0
       raise TriangleError
     else
       if
         a + b <= c || b + c <= a || a + c <= b
         raise TriangleError
       elsif
         a == b && a==c && b == c
         :equilateral
       elsif
         a == b || b == c || a == c
         :isosceles
       elsif
         a != b && b != c && a != c
         :scalene
       end
     end
   end
 end

 class TriangleError < StandardError
 end
