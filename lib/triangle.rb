class Triangle
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a,side_b,side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    real?
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isosceles
    else
      :scalene
    end
  end

  def real?
    real_tri = [(side_a + side_b > side_c),(side_a + side_c > side_b),(side_b + side_c > side_a)]
    [side_a,side_b,side_c].each {|side| real_tri << false if side <= 0}
    raise TriangleError if real_tri.include?(false)
  end
end

class TriangleError < StandardError
end
