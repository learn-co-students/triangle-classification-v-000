class Triangle

  attr_reader :side1, :side2, :side3 #we only set them up at the beginning

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end



  def kind
    error #this will raise an error if it's not a true triangles, otherwise it will tell us what kind of triangle it is
    if equilateral
      :equilateral
    elsif isosceles
      :isosceles
    else
      :scalene
    end
  end

  def error #checks if it's a true triangle and if not raises error
    if !true_triangle || side1 <= 0 || side2 <= 0 || side3 <= 0
        raise TriangleError
    end
  end

  def equilateral
    side1 == side2 && side2 == side3
  end

  def isosceles
    side1 == side2 || side2 == side3 || side1 == side3
  end

  def true_triangle
    side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
  end

end

class TriangleError < StandardError
end
