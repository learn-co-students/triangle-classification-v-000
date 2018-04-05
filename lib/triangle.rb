class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3, :equilateral,
                 :isosceles, :scalene

       def initialize(side1, side2, side3)
         @side1 = side1
         @side2 = side2
         @side3 = side3
       end

       def kind
             if side1 == 0 && side2 == 0 && side3 ==0
               raise TriangleError
             elsif side1 <= -1 || side2 <= -1 || side3 <= -1
               raise TriangleError
             elsif (side1 + side2 <= side3) || (side2 + side3 <= side1) || (side1 + side3 <= side2)
               raise TriangleError

             elsif side1 == side2 && side2 == side3
               return :equilateral
             elsif
               side1 == side2 || side2 == side3 || side1 == side3
               return :isosceles
             elsif
               side1 != side2 && side2 != side3
               return :scalene
             end #if statement
       end #kind method
 end #Triangle class

 class TriangleError < StandardError
   def notice
     "The triangle measurements provided do not meet the conditions of
     equilateral, isosceles or scalene triangles."
   end
 end
