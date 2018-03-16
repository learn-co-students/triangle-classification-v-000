class Triangle

  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    self.first_side = first_side
    self.second_side = second_side
    self.third_side = third_side
  end

  def kind
    raise TriangleError if !valid?
    return :equilateral if first_side == second_side && first_side == second_side && second_side == third_side
    return :scalene if first_side != second_side && first_side != third_side && second_side != third_side
    :isosceles
  end

  def valid?
    first_side != 0 && second_side != 0 && third_side != 0 && first_side < second_side + third_side && second_side < first_side + third_side && third_side < first_side + second_side
  end

end

class TriangleError < StandardError
 # triangle error code
end
