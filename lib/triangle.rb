# no side lengths <= zero, sum of any two sides must exceed the third 

class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def high_enough?
   unless side1 <= 0 || side2 <= 0 || side3 <= 0
      true
    else
      false
    end
  end
  
  def balanced_sides?
    if side1 + side2 > side3 || side1 + side3 > side2 || side2 + side3 > side1
      true
    else
      false
    end
  end
  
  def kind
    if high_enough? && balanced_sides?
      if side1 == side2 && side1 == side3
        # all sides equal
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        # two sides equal
        :isosceles
      else
        # no equal sides
        :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end
      false
    end
  end
  
  class TriangleError < StandardError
    def message 
      "Invalid triangle: remember that side lengths have to be higher than zero, and the sum of any two sides cannot exceed the third"
    end
  end
end
