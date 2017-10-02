class Triangle
  attr_reader :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    largest_side = 0
    small_side1 = 0
    small_side2 = 0
    if @side_one > @side_two && @side_one > @side_three
      largest_side = @side_one
      small_side1 = @side_two
      small_side2 = @side_three
    elsif @side_two > @side_one && @side_two > @side_three
      largest_side = @side_two
      small_side1 = @side_one
      small_side2 = @side_three
    elsif @side_three > @side_two && @side_three > @side_one
      largest_side = @side_three
      small_side1 = @side_two
      small_side2 = @side_one
    else
      largest_side = @side_one
      small_side1 = @side_two
      small_side2 = @side_three
    end
    if (@side_one > 0 && @side_two > 0 && @side_three > 0) && (small_side1 + small_side2 > largest_side)
      if @side_one == @side_two && @side_one == @side_three
        return :equilateral
      elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three

        return :scalene
      elsif ((@side_one == @side_two && @side_one != @side_three) || (@side_one == @side_three && @side_one != @side_two) || (@side_two == @side_three && @side_two != @side_one))
        return :isosceles
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  def message
    "one or more sides equal to 0 or does not follow Triangle inequality rule"
  end
end
