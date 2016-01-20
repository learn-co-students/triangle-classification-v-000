class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @@sides << @side_a
    @@sides << @side_b
    @@sides << @side_c
    @@sides.sort!
  end

    @@sides = []

  def kind
    if @@sides[0] + @@sides[1] <= @@sides[2]
        raise TriangleError
    elsif @side_a < 0 || @side_b < 0 || @side_c < 0
      raise TriangleError
    elsif @side_a == @side_b && @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      :isosceles
    else
      :scalene
    end
  end


end

  class TriangleError < StandardError

  end