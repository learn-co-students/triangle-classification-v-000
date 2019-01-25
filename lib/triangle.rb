class Triangle
  attr_accessor :side1, :side2, :side3, :kind
   # write code here
   def initialize(side1, side2, side3)
     @side1 = side1
     @side2 = side2
     @side3 = side3
   end

   def kind
      if (side1 == side2) && (side2 == side3) && (side1 == side3)
        self.kind = :equilateral

      elsif (side1 == side2) || (side2 == side3) || (side1 == side3)
        self.kind = :isosceles

      elsif (side1 != side2) && (side2 != side3) && (side1 != side3)
        self.kind = :scalene

      else
        self.kind = :TriangleError
      end
   end

   def error
      if (side1 < 0) || (side2 < 0) || (side3 < 0)
        self.kind = :TriangleError
      elsif (side1 + side2) <= side3 || (side1 + side3) <= side2 || (side2 + side3) <= side1
        self.kind = :TriangleError
      end
   end

   class TriangleError < StandardError
   end

end
