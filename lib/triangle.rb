require "pry"
class Triangle

  def initialize (side_1, side_2, side_3)
    if side_1 == 0 || side_2 == 0 || side_3 == 0 || (side_1 + side_2) <= side_3 || (side_1 + side_3) <= side_2 || (side_2 + side_3) <= side_1
      @type = :invalid
    elsif side_1 == side_2 && side_2 == side_3
      @type = :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      @type = :isosceles
    elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3 
      @type = :scalene
    end
  end

  def kind
    if @type == :invalid
      raise TriangleError
    else
      @type
    end
  end
end

class TriangleError < StandardError
end

