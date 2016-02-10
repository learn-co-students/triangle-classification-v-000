require 'pry'

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if illegal?
      begin
        raise TriangleError
      end
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  def illegal?
    if all_sides_not_greater_0?
      true
    elsif triangle_inequality_fail?
      true
    end
  end

  def all_sides_not_greater_0?
    !(side1 > 0 && side2 > 0 && side3 > 0)
  end

  def triangle_inequality_fail?
    # sum of any two sides must be greater then the other
    (sum_a || sum_b || sum_c)
  end

  def sum_a
    side1 + side2 < side3
  end

  def sum_b
    side2 + side3 < side1
  end

  def sum_c
    side3 + side1 <= side2
  end

  def equilateral?
    side1 == side2 && side1 == side3
  end

  def isosceles?
    side1 == side2 || side1 == side3 || side2 == side3
  end

  def scalene?
    side1 != side2 && side1 != side3 && side2 != side3
  end
end
  
class TriangleError < StandardError
  def message
   "yaaahoooo"
  end 
end
