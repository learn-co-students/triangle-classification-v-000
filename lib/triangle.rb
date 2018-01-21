class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize (side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def equilateral?
    side_a == side_b && side_b == side_c
  end

  def isosceles?
    side_a == side_b || side_b == side_c || side_c == side_a
  end

  def scalene?
    side_a != side_b && side_a != side_c && side_b != side_c
  end

  def valid?
    (side_a + side_b > side_c) && (side_b + side_c > side_a) && (side_a + side_c > side_b)
  end

  def kind
    if valid?
      if equilateral?
        :equilateral
      elsif isosceles?
        :isosceles
      elsif scalene?
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end
