class Triangle
  attr_accessor :type, :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (side_1 > 0 && side_2 > 0 && side_3 > 0) && (side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_1 + side_3 > side_2)
      if side_1 == side_2 && side_2 == side_3
        self.type = :equilateral
      elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
        self.type = :isosceles
      else
        self.type = :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
