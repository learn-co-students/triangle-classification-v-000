class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @side_array = [side_one, side_two, side_three].sort
  end
  def kind
    if @side_array[0] <= 0 || @side_array[1] <= 0 || @side_array[2] <= 0
      raise TriangleError
    elsif @side_array[0] + @side_array[1] <= @side_array[2] || @side_array[0] + @side_array[2] <= @side_array[1] || @side_array[1] + @side_array[2] <= @side_array[0]
      raise TriangleError
    elsif @side_array[0] == @side_array[1] && @side_array[0] == @side_array[2] && @side_array[2] == @side_array[1]
      :equilateral
    elsif @side_array[0] == @side_array[1] || @side_array[0] == @side_array[2] || @side_array[2] == @side_array[1]
      :isosceles
    elsif @side_array[0] != @side_array[1] && @side_array[0] != @side_array[2] && @side_array[2] != @side_array[1]
      :scalene
    end
  end
end

class TriangleError < StandardError
  puts "TriangleError"
end
