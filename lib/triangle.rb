class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    valid_triangle
    if l1 == l2 && l2 == l3
      :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      :isosceles
    else
      :scalene
    end

  end

  def valid_triangle
    real_triangle = [(l1 + l2 > l3), (l1 + l3 > l2), (l2 + l3 > l1)]
    [l1, l2, l3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end #Triangle

class TriangleError < StandardError
end #TriangleError
