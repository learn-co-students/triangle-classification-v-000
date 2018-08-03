require 'pry'
class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
#binding.pry
  def trutriangle
     (@l1 + @l2 > @l3 && @l2 + @l3 > @l1 && @l1 + @l3 > @l2) && (@l1.positive? && @l2.positive? && @l3.positive?)
  end

  def kind
    if self.trutriangle == false
      #binding.pry
        raise TriangleError

    else
      if @l1 == @l2 && @l2 == @l3
        :equilateral
      elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
