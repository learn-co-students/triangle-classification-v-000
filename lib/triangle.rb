class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
  end

  def kind
    sides = [side1, side2, side3]
    if sides.all?{|x| x <= 0 }
      begin
        raise TriangleError
      end
    elsif (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2
      begin
        raise TriangleError
      end
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end

