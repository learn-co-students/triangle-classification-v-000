class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (sum_of_two_sides_is_greater_than_third_side?) && (all_sides_are_greater_than_zero?)
      triangle_classification
    else
      raise TriangleError
    end
  end

  private

  def all_sides_are_greater_than_zero?
    side_1 > 0 && side_2 > 0 && side_3 > 0
  end

  def sum_of_two_sides_is_greater_than_third_side?
    side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
  end

  def triangle_classification
    sides = [side_1, side_2, side_3]
    number_of_unequal_sides = sides.uniq.length
    case number_of_unequal_sides
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
end

class TriangleError < StandardError
end
