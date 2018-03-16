class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l3 + @l1 <= @l2 || @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      raise TriangleError
    elsif @l1 == @l2 && @l2 == @l3
      a = :equilateral
    elsif @l1 != @l2 && @l2 != @l3 && @l1 != @l3
      b = :scalene
    elsif @l1 == @l2 || @l2 == @l3 || @l3 = @l1
      c = :isosceles
    end
  end
end

class TriangleError < StandardError
end
