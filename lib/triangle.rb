class Triangle
  # write code here
attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    valid
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1==side2 || side2==side3|| side1==side3
      :isosceles
    else
      :scalene
    end
  end

  def valid
    valid = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each {|s| valid << false if s <=0}
      if valid.include?(false)
        raise TriangleError
      end
    end

  def equilateral
    side1 + side2 = side3
  end
end

class TriangleError < StandardError
end
