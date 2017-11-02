class Triangle

  #Variables
  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  #Methods
  def kind
    if (@first_side <= 0 || @second_side <= 0 || @third_side <= 0) || (first_side + second_side <= third_side || third_side + second_side <= first_side || first_side + third_side <= second_side)
      begin
        raise TriangleError
      end
    elsif first_side == second_side && second_side == third_side
      :equilateral
    elsif first_side == second_side || second_side == third_side || first_side == third_side
      :isosceles
    else
      :scalene
    end
  end
end

#Custom Error Class
class TriangleError < StandardError
  def message
    "not a valid triangle"
  end
end
