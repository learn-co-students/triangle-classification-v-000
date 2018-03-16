class Triangle
  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
  end

  def kind
    if @sides.any? { |side| side <= 0 } ||
      @sides[0] >= @sides[1] + @sides[2] ||
      @sides[1] >= @sides[0] + @sides[2] ||
      @sides[2] >= @sides[0] + @sides[1]

      raise TriangleError
    end
    if @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[1] == @sides[2] || @sides[0] == @sides[1] || @sides[0] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end
