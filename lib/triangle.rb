class Triangle

  attr_accessor :kind

  def initialize(side1, side2, side3)
    if (side1 <= 0 || side2 <= 0 || side3 <= 0) || (side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2)
        raise TriangleError
    elsif side1 != side2 && side1 != side3 && side2 != side3
      @kind = :scalene
    elsif side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif (side1 == side2 && side2 != side3 && side1 != side3) || (side2 == side3 && side1 != side2 && side1 != side3)  || (side1 == side3 && side1 != side2 && side2 != side3)
      @kind = :isosceles
    end
  end

  def kind
    @kind
  end
end

class TriangleError < StandardError

end
