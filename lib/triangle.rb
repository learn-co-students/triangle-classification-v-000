class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == 0 || @side_1 >= @side_2 + @side_3 || @side_2 >= @side_1 + @side_3 || @side_3 >= @side_1 + @side_2
      raise TriangleError
    else
      if @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
        if @side_1 == @side_2 && @side_1 == @side_3
          :equilateral
        else
          :isosceles
        end
      else
        :scalene
      end
    end
end
    class TriangleError < StandardError
    end
end
