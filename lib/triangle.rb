class Triangle
  attr_accessor :first_side_length, :second_side_length, :third_side_length

  def initialize(first_side_length, second_side_length, third_side_length)
    @first_side_length = first_side_length
    @second_side_length = second_side_length
    @third_side_length = third_side_length
  end

  def kind
    if @first_side_length <= 0 || @second_side_length <= 0 || @third_side_length <= 0
      raise TriangleError, "triangles with no size are illegal."
    elsif @first_side_length+@second_side_length <= @third_side_length || @first_side_length+@third_side_length <= @second_side_length || @third_side_length+@second_side_length <= @first_side_length
      raise TriangleError, "triangles violating triangle inequality are illegal."

    elsif @first_side_length == @second_side_length && @second_side_length == @third_side_length
      :equilateral
    elsif @first_side_length == @third_side_length || @second_side_length == @third_side_length || @second_side_length == @first_side_length
      :isosceles
    elsif @first_side_length != @second_side_length && @second_side_length != @third_side_length
      :scalene
    end
  end

end

class TriangleError < StandardError
end
