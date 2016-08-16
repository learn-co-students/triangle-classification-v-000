#require "pry"
class Triangle
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  def kind
    #binding.pry
    if @l1 + @l2 <= @l3 || @l3 + @l2 <= @l1 || @l3 + @l1 <= @l2
        raise TriangleError
    elsif @l1 == @l2 && @l1 == @l3
      :equilateral
    elsif @l2 == @l3 || @l1 == @l3 || @l1 == @l2
      :isosceles
    elsif @l1 != @l2 && @l3 != @l2 && @l3 != @l1
      :scalene


    end





  end

end

class TriangleError < StandardError
  def message
    "Sorry Invalid Triangle"
  end
end

#x = Triangle.new(2,4,2)
#puts x.kind
