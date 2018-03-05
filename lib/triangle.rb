class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(arg1, arg2, arg3)
    @side1 = arg1
    @side2 = arg2
    @side3 = arg3
  end

  def kind
    if @side1 <=0 || @side2 <=0 || @side3 <=0
      raise TriangleError
    elsif (@side1 + @side2) < @side3 || (@side3 + @side2) < @side1 || (@side1 + @side3) <= @side2
      raise TriangleError
    elsif @side1 == @side2 && @side1 == side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    end
  end
end

class TriangleError < StandardError
  def initialize
    puts "Triangle Error"
  end
end
