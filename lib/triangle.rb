class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(s1,s2,s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
  end

  def kind

    if (side1 <= 0 || side2 <= 0 || side3 <= 0) || (side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1)
        raise TriangleError
    end

    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError

end
