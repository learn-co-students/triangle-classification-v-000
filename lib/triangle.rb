require 'pry'
class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    elsif side_a + side_b <= side_c || side_b + side_c <= side_a || side_c + side_a <= side_b
      raise TriangleError
    elsif side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_c == side_a
      :isosceles
    elsif side_a != side_b && side_b != side_c && side_c != side_a
      :scalene
    else

    end
  end
  # write code here
end

  class TriangleError < StandardError
  end
