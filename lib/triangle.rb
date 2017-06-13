class Triangle

  attr_accessor :side_1, :side_2, :side_3

#initialize with 3 triangle sides

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    #raise TriangleError if sides are equal to less than 0
    if side_1 <=0 || side_2 <=0 || side_3 <=0
      raise TriangleError
    elsif
    #raise TriangleError if one of the sides are equal to each other, false
      side_1 + side_2 < side_3 || side_2 + side_3 < side_1 || side_1 + side_3 <= side_2
      raise TriangleError
    # all sides equal, equilateral
    elsif side_1 == side_2 && side_2 == side_3
      :equilateral
    # at least 2 sides are equal, isosceles
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    # no sides are equal, scalene
    else side_1 != side_2 || side_2 != side_3 || side_1 != side_3
      :scalene
    end
  end
end #ends Class Triangle

#TriangleError inherits from StandardError
class TriangleError < StandardError

end
