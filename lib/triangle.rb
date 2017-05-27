class Triangle
  attr_accessor :first_side_length, :second_side_length, :third_side_length

  def initialize(first_side_length, second_side_length, third_side_length)
    @first_side_length = first_side_length
    @second_side_length = second_side_length
    @third_side_length = third_side_length
  end

  def kind
    if @first_side_length <= 0 || @second_side_length <= 0 || @third_side_length <= 0
      # begin
      raise TriangleError
    elsif @first_side_length+@second_side_length <= @third_side_length || @first_side_length+@third_side_length <= @second_side_length || @third_side_length+@second_side_length <= @first_side_length
      raise TriangleError

      # rescue TriangleError => error
      #   error.message
      # end

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

  # def message
  #   puts "triangles with no size are illegal."
  # end

end
