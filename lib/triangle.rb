class Triangle
  attr_accessor :sides, :kind

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3].sort
  end

  def kind
    raise TriangleError unless valid?
    if @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
      :isosceles
    elsif @sides[0] != @sides[1] || @sides[1] != @sides[2] || @sides[0] != @sides[2]
      :scalene
    end
  end

  def valid?
    @sides[0] + @sides[1] > @sides[2] && @sides[0] > 0
  end

end

class TriangleError < StandardError
end
