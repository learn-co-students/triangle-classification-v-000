class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = []
  end

  def sides
    @sides << @side1
    @sides << @side2
    @sides << @side3
#    @middle = @sides.find_all {|i| i != sides.max }
  end

  def kind
    if self.sides.any? {|i| i <= 0}
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @side1 == @side2 && @side2 == @side3
        :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
    else
        :scalene
    end

  end

end

class TriangleError < StandardError
  def message
    "Your triangle is illegal"
  end

end

triangle = Triangle.new(1, 1, -1)
triangle.kind

