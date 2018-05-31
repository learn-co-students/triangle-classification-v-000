class Triangle
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (side1 <= 0 || side2 <= 0 || side3 <= 0) ||
      (((side1 + side2) <= side3) || ((side2 + side3) <= side1) || ((side3 + side1) <= side2))
      raise TriangleError
    else
        if (side1 == side2) && (side2 == side3)
          return :equilateral
        elsif (side1 == side2 && side1 != side3) ||
          (side2 == side3 && side2 != side1) || (side1 == side3 && side1 != side2)
          return :isosceles
        elsif (side1 != side2) && (side2 != side3) && (side3 != side1)
          return :scalene
        else
          raise TriangleError
        end
      end
  end

  class TriangleError < StandardError
    def message
      "TriangleError"
    end
  end

end

#    if side1 < 0 || side2 < 0 || side3 < 0
#      "all sides of a triangle must have a length greater than zero"
#    elsif side1 + side2 !> side3
#      "the sum of the lengths of any two sides of a triangle must always exceed the length of the third side"
#    end

#begin
#  if (side1 < 0 || side2 < 0 || side3 < 0) || ((side1 + side2) < side3)
#    raise TriangleError
#  rescue TriangleError => error
#    puts error.message
#  end
#end
