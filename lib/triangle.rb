require 'pry'

class Triangle
  attr_accessor :left, :right, :bottom

  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end

  def kind
    l = self.left
    r = self.right
    b = self.bottom
    equilateral = l == r && r == b && b == l

    if l + r <= b || l + b <= r || r + b <= l || l <= 0 || r <= 0 || b <= 0
      begin
        raise TriangleError
      end

    elsif equilateral
      :equilateral

    elsif
      l == r && r != b && l != b ||
      r == b && b != l && l != b ||
      b == l && l != r && b != r
      :isosceles
    else
      :scalene
    end

  end
end

class TriangleError < StandardError
  def message
    "That's not a triangle, motherfucker"
  end
end
