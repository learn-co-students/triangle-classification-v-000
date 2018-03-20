class Triangle
  def initialize(side1, side2, side3)
    @shape = [side1, side2, side3]
  end

  def validate
    @shape.each do |side|
      raise TriangleError if side <= 0 || @shape.reduce(0, :+) <= side * 2
    end
  end

  def kind
    validate
    return :equilateral if @shape.uniq.length == 1
    return :isosceles   if @shape.uniq.length == 2
    return :scalene     if @shape.uniq.length == 3
  end
end

class TriangleError < StandardError
end
