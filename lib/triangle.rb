class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3) # write code here
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    real_triangle
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end
  end

  def real_triangle
    real = [(side1 + side2 > side3), (side2 + side3 > side1), (side3 + side1 > side2)]
    [side1, side2, side3].each {|side| real << false if side <= 0}
    raise TriangleError if real.include?(false)
  end


  class TriangleError < StandardError
  end
end
