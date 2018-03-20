class Triangle
  def initialize(side1, side2, side3)
    @shape = [side1, side2, side3]
  end

  def kind
    # validate each side of the triangle or raise error
    @shape.each do |side|
      if side <= 0 || @shape.reduce(0, :+) <= side * 2
        raise TriangleError
      end
    end
    # get back on topic, what kind am i?
    case @shape.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
end

class TriangleError < StandardError
end
