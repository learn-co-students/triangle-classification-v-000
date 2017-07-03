class Triangle
  # write code here

  attr_accessor :sides_array

  def initialize(side_one, side_two, side_three)

    @sides_array = [side_one, side_two, side_three]
  end

  def kind
    array = self.sides_array

    if array.any? { |side| side <= 0 }
      raise TriangleError
    elsif (array[0] + array[1] <= array[2] ||
      array[1] + array[2] <= array[0]||
      array[0] + array[2] <= array[1])

      raise TriangleError

    end

    if array.uniq.count == 1
      :equilateral
    elsif array.uniq.count == 2
      :isosceles
    elsif array.uniq.count == 3
      :scalene
    end

  end


end


class TriangleError < StandardError
end
