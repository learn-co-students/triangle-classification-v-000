class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 > 0 && @l2 > 0 && @l3 > 0
      if @l1 == @l2 && @l2 == l3
        :equilateral
      elsif @l1 + @l2 <= @l3 || @l1 + @l3 <= @l2 || @l2 + @l3 <= @l1
        raise TriangleError
      elsif (@l1 == @l2 && @l2 != @l3) || (@l1 == @l3 && @l3 != @l2) || (@l2 == @l3 && @l3 != @l1)
        :isosceles
      elsif @l1 != @l2 && @l2 != @l3 && @l1 != @l3
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end


end
