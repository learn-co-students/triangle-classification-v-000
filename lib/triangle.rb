class Triangle
  # write code here

  attr_reader :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def legal?
    if ((@length_one + @length_two) > @length_three) && ((@length_one + @length_three) > @length_two) && ((@length_two + @length_three) > @length_one)
      true
    else
      false
    end
  end

  def kind
    if @length_one > 0 && @length_two > 0 && @length_three > 0
      if self.legal?
        if @length_one == @length_two && @length_two == @length_three
          :equilateral
        elsif (@length_one == @length_two && @length_two != @length_three) || (@length_one == @length_three && @length_two != @length_three) || (@length_two == @length_three && @length_one != @length_two)
          :isosceles
        else
          :scalene
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
