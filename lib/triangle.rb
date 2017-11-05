class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    elsif ((side_a + side_b) <= side_c) || ((side_a + side_c) <= side_b) || ((side_b + side_c) <= side_a)
      raise TriangleError
    elsif side_a == side_b && side_b == side_c
      return :equilateral
    elsif (side_a == side_b && side_a != side_c) || (side_a == side_c && side_c != side_b) || (side_b == side_c && side_c != side_a)
      return :isosceles
    else
      return :scalene
    end
  end

end


class TriangleError < StandardError
end
