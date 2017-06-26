class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid? == false
      raise TriangleError
    elsif side1 == side2 && side2 == side3 && side3 == side1
        :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
        :isosceles
    else
        :scalene
    end
  end

  def valid?
    side1 > 0 && side2 > 0 && side3 > 0 && side1 + side2 > side3 && side2 + side3 > side1 && side3 + side1 > side2
  end

end

class TriangleError < StandardError
end
