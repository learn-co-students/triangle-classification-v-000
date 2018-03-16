class Triangle

  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    validate
    if l1 == l2 && l2 == l3
      :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3
      :isosceles
    else
      :scalene
    end
  end

  def validate
    s = (l1 + l2 + l3) / 2.0
    valid_triangle = (s - l1) * (s - l2) * (s - l3)

    if l1 <= 0 || l2 <= 0 || l3 <=0 || valid_triangle <= 0
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
