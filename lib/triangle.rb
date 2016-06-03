require "pry"
class Triangle
  attr_reader :equilateral, :isosceles, :scalene, :side1, :side2, :side3, :all_sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides = [side1,side2,side3]
  end

  def equilateral
    # return true if all sides are of equal length
    all_sides.uniq.size == 1
  end

  def isosceles
    # return true if 2 sides are of equal length
    all_sides.uniq.size == 2
  end

  def scalene
    # return true if all sides are of unequal length
    all_sides.uniq.size == 3
  end

  def triangle?
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1 && all_sides.all? { |side| side > 0 }
  end

  def kind
    if !triangle?
      raise TriangleError
    elsif equilateral
       :equilateral
    elsif isosceles
      :isosceles
    else scalene
      :scalene
    end
  end

end


class TriangleError < StandardError
end
