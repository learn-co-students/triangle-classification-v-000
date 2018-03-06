class Triangle

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def triangle
    if @side_one < 0 || @side_two < 0 || @side_three < 0
      return false
    end

    if @side_one + @side_two > @side_three && @side_two + @side_three > @side_one && @side_one + @side_three > @side_two
     return true
    else
      return false

    end
  end


  def kind
    if self.triangle == true

      if @side_one == @side_two && @side_two ==
        @side_three
        return :equilateral
      elsif (@side_one != @side_two && @side_three ==
        @side_two) || (@side_one == @side_two && @side_three != @side_two) || (@side_one == @side_three && @side_one != @side_two)
        return :isosceles
      elsif @side_one != @side_two && @side_two !=
        @side_three
        return :scalene
      end

    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  # triangle error code
end
