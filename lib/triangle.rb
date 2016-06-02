require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :sides

  def initialize(side1, side2, side3)
    # case
    # when side1 <= 0 || side2 <= 0 || side3 <= 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     error.message1
    #   end
    # when side1 + side2 < side3 || side1 + side3 < side2 || side2 + side3 < side1
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     error.message2
    #   end
    # else
    @sides = [side1, side2, side3]
    # end
  end

  def kind
    case
    # when !@sides
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     error.message3
    #   end
    when @sides[0] <= 0 || @sides[1] <= 0 || @sides [2] <= 0
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   error.message1
      # end
    when @sides[0] + @sides[1] <= @sides[2] || @sides[0] + @sides[2] <= @sides[1] || @sides[1] + @sides[2] <= @sides[0]
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   error.message2
      # end
    when @sides[0] == @sides[1] && @sides[0] == @sides[2]
      :equilateral
    when @sides[0] == @sides[1] && @sides[0] != @sides[2]
      :isosceles
    when @sides[1] == @sides[2] && @sides[1] != @sides[0]
      :isosceles
    when @sides[2] == @sides[0] && @sides[2] != @sides[1]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

  def message1
    "Any sides of the triangle can not be 0 length."
  end

  def message2
    "The sume of any two sides of the triangle must be greater than the third side of the triangle."
  end

  def message3
    "Triangle has no size or illegal!"
  end

end


# Triangle.new(0,0,0).kind
