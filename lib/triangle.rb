class Triangle
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    is_triangle
    if one == two && two == three
      :equilateral
    elsif one==two || one==three || two==three
      :isosceles
    else
      :scalene
    end
  end
  
  def is_triangle
    real_triangle = [(one + two > three), (one + three > two), (two + three > one)]
    [one, two, three].each do |side|
      real_triangle << false if side <= 0
    end  
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
  def message
    "Triangles with no size are illegal"
  end
end