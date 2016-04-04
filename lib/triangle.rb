class Triangle
  
  attr_accessor :side1, :side2, :side3, :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    raise TriangleError unless (side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1)

    if side1 == side2 && side2 == side3
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