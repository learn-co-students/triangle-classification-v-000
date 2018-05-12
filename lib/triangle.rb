class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

  end

    def kind
      if @side_one == @side_two && @side_two == @side_three && @side_three == @side_one
        :equilateral
      elsif @side_one != @side_two && @side_two != @side_three && @side_three != @side_one
        :scalene
      elsif @side_one != @side_two && @side_two != @side_three
        :isosceles
      else @side_one == 0 && @side_two == 0 && @side_three == 0
        raise TriangleError
    end
  end


  class TriangleError < StandardError
    # triangle error code
  end
end
