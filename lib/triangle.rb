class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides

  def initialize(side_1, side_2, side_3)
    @sides = [
    @side_1 = side_1,
    @side_2 = side_2,
    @side_3 = side_3,
    ]
  end

  def valid?
    if @side_1 + @side_2 <= @side_3 || @side_3 + @side_1 <= @side_2 || @side_3 + @side_2 <= @side_1 || self.sides.any?{|side| side == 0}
    false
    else
    true
    end
  end

  def kind
    if self.valid? != true
        raise TriangleError
    elsif @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end
