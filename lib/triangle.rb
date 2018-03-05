class Triangle
  attr_accessor :side_1, :side_2, :side_3, :sides

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end

  # helper method to test if it's a triangle
  def triangle_test
    return false if sides.any?{|side| side <= 0}
    if side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
      return true
    else
      return false
    end
  end

  def kind
    if self.triangle_test
      if ((side_1 == side_2) && (side_1 == side_3) && (side_2 == side_3))
        return :equilateral
      elsif ((side_1 == side_2) || (side_1 == side_3) || (side_2 == side_3))
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

end



class TriangleError < StandardError

end
