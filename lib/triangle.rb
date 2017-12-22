class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    error?
    if equilateral?
      :equilateral
    elsif isosceles?
        :isosceles
    else
      :scalene
    end
  end

  def scalene?
    if side1 != side2 && side2 != side3 && side1 != side3
      true
    end
  end

  def isosceles?
    if side1 == side2 || side2 == side3 || side1 == side3
      true
    end
  end

  def equilateral?
    if side1 == side2 && side2 == side3
      true
    end
  end

  def error?
    real_triangle = [(side1 + side2 > side3),(side2 + side3 > side1), (side1 + side3 > side2)]
    [side1,side2,side3].each{|s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end

end

class TriangleError < StandardError
  def message
    "That is not a Triangle!"
  end

end
