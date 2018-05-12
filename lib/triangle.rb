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
      else @side_one != @side_two && @side_two != @side_three
        :isosceles
    end
  end


  class TriangleError < StandardError
    # triangle error code
  end
end
