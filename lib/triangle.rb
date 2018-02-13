class Triangle
  attr_accessor :sides

  def initialize(a,b,c)
    self.sides = [a,b,c].sort
    self.valid?
  end

  def valid?
    a, b, c = self.sides
    if a + b <= c || a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end
  end

  def kind
    a, b, c = self.sides
    if a == b && b == c
      return :equilateral
    elsif a !=b && b != c && a != c
      return :scalene
    else
      return :isosceles
    end
  end
end

class TriangleError < StandardError
  def message
    'this is not a valid triangle'
  end
end
