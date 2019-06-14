class Triangle
  attr_accessor :left, :right, :center

  def initialize(left, right, center)
    @left = left
    @right = right
    @center = center
  end

  def kind

    if (@left == 0 || @right == 0 || @center == 0) || ((@left + @right) < @center || (@left + @center) <= @right || (@right + @center) <= @left)
      raise TriangleError
    elsif (@left == @right) && (@right == @center)
      :equilateral
    elsif @left == @right || @right == @center || @left == @center
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end


end
