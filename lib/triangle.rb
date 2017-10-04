class Triangle

  attr_accessor :first_side, :second_side, :third_side, :equilateral, :isosceles, :scalene

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  def kind
    if first_side <= 0 || second_side <= 0 || third_side <= 0
      raise TriangleError
    elsif (first_side >= second_side + third_side) || (second_side >= first_side + third_side) || (third_side >= first_side + second_side)
      raise TriangleError
    else
      if (first_side == second_side) && (first_side == third_side)
        :equilateral
      elsif (first_side == second_side) || (first_side == third_side) || (second_side == third_side)
        :isosceles
      else
        :scalene
      end
    end
  end


end

class TriangleError < StandardError
  def message
    "illegal triangle"
  end
end
