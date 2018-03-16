class Triangle
  # write code here
  attr_accessor :left, :right, :bottem

  def initialize (left,right,bottem)
    @left = left
    @right = right
    @bottem = bottem
  end

  def kind
    validate_triangle
    if left == right && right == bottem
      :equilateral
    elsif left == right ||right == bottem|| left == bottem
    :isosceles
    else
      :scalene
    end
  end
  def validate_triangle
    real_triangle = [(left + right > bottem), (left + bottem > right), (right + bottem > left)]
    [left, right, bottem].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
    def message
      "The paramaeters of this triangle are invalid"
    end
end
