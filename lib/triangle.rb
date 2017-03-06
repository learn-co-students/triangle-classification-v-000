class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3

  end

  def kind
    triangle?
    if @l1 == @l2 && @l1 == @l3
      :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
      :isosceles
    elsif @l1 != @l2 && @l1 != @l3
      :scalene
    end
  end

  def triangle?
    triangle = [(@l1 + @l2 > @l3), (@l1 + @l3 > @l2), (@l2 + @l3 > @l1)]
    [@l1, @l2, @l3].each {|x| triangle << false if x <= 0}
    raise TriangleError if triangle.include?(false)
  end
end

class TriangleError < StandardError
end
