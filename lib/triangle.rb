class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one_length, side_two_length, side_three_length)
    @side_one = side_one_length
    @side_two = side_two_length
    @side_three = side_three_length
  end
  
  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      begin
        raise TriangleError
      end
    elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      begin
        raise TriangleError
      end
    elsif @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three
      return :isosceles
    elsif @side_one != @side_two && @side_two != @side_three && @side_one != @side_three
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    puts "Errors"
  end
end
