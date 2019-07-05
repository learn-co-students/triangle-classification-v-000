class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

 def kind

    check_triangle

  case 
    when @side1 == @side2 && @side2 == @side3
      return :equilateral
    when side1 == side2 || side2 == side3 || side1 == side3
      return :isosceles
    else
      return :scalene   
  end
 end

  def check_triangle
    real_triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
   end

  class TriangleError < StandardError
  end
  
end

#Triangle.new(2, 2, 2).kind