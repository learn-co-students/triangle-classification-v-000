class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1,@side2,@side3]
  end

  def kind
    if invalid?
        raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    elsif @side1 != @side2 && @side2 != @side3
      return :scalene
    end
  end

  def invalid?
    if @sides.any? {|side| side <= 0}
      true
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      true
    end

  end

  class TriangleError < StandardError
    # triangle error code
  end
end
