require 'pry'

class Triangle

  attr_accessor :side_1, :side_2, :side_3, :kind

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

  end

  def kind
    #binding.pry
    if (side_1 + side_2) <= side_3 || (side_2 + side_3) <= side_1 || (side_3 + side_1) <= side_2 || (side_1 * side_2 * side_3 == 0)

      raise TriangleError

    elsif side_1 == side_2 && side_1 == side_3
      self.kind = :equilateral

    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      self.kind = :isosceles

    else self.kind = :scalene

end
  end

  class TriangleError < StandardError
  end
end
