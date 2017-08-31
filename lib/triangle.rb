class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [side_1, side_2, side_3].sort
    #
    # raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
    # return :equilateral if sides.uniq.length  == 1
    # return :isosceles if sides.uniq.length  == 2
    # :scalene


    if sides.any? {|x| x <= 0} || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else side_1 != side_2 && side_2 != side_3 && side_3 != side_1
      :scalene
    end

  end
end

class TriangleError < StandardError
  def message
    "This is an invalid triangle!! Please try agian :P"
  end
end
