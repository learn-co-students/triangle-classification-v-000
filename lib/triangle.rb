require "pry"

class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    @sides = [a, b, c]
    self.kind
  end

  def kind
    sorted = @sides.sort
    a = sorted[0]
    b = sorted[1]
    c = sorted[2]
    if sorted[0] <= 0 || a + b <= c
      raise TriangleError
    elsif sorted[0] == sorted[1] && sorted[1] == sorted[2]
      :equilateral
    elsif sorted[0] == sorted[1] || sorted[1] == sorted[2]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end