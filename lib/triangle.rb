class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3

  end

  def kind
      if l1 == l2 && l2== l3
        :equilateral
      elsif a == b || b == c || a === c
        :isosceles
      else
        :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "That's not a triangle dummy!"
  end
end
