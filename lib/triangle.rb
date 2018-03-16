require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_one, side_two, side_three)
    if (side_one <= 0) || (side_two <= 0) || (side_three <= 0)
      raise TriangleError
    end
    if (side_one+side_two <= side_three) || (side_one+side_three <= side_two) || (side_two+side_three <= side_one)
      raise TriangleError
    end
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end


  def kind

    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif (@side_one == @side_two && @side_one != @side_three) || (@side_one == @side_three && @side_one != @side_two) || (@side_two == @side_three && @side_two != @side_one)
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
 def message
   puts "That is not a valid triangle."
 end
end
