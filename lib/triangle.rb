class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3

  end

  def kind
      validate_triangle
      if l1 == l2 && l2== l3
        :equilateral
      elsif l1 == l2 || l2 == l3 || l1 === l3
        :isosceles
      else
        :scalene
    end
  end

  def validate_triangle
    actual_triangle = [(l1 + l2 > l3), (l1 + l3 > l2), (l2 + l3 > l1)]
    [l1, l2, l3].each {|side| actual_triangle << false if side <= 0}
    raise TriangleError if actual_triangle.include?(false)
  end
end

class TriangleError < StandardError
  # def message
  #   "That's not a triangle dummy!"
  # end
end
