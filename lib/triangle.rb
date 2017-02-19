class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    sides = [length_one, length_two, length_three]
    ascending_side_lengths = sides.sort

    if sides.any? {|side_length| side_length <= 0}
      raise TriangleError, "The triangle is invalid. Each side of the triangle must be larger than 0."
    end

    if ascending_side_lengths[0] + ascending_side_lengths[1] <= ascending_side_lengths[2]
      raise TriangleError, "The triangle is invalid. The sum of the lengths of any two sides of a triangle must exceed the length of the third side."
    end

    if sides.count(length_one) == 3
      :equilateral
    elsif sides.count(length_one) == 2 || sides.count(length_two) == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
