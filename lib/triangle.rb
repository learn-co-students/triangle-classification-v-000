class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    triangle = [@side_1, @side_2, @side_3]
    triangle.sort
    if triangle[0] + triangle[1] < triangle[2] || (@side_1 < 1 || @side_2 < 1 || @side_3 < 1)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  def kind
    triangle = [@side_1, @side_2, @side_3].sort
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    else
      triangle[0] + triangle[1] < triangle[2] || (@side_1 < 1 || @side_2 < 1 || @side_3 < 1)
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
    end
  end

end


class TriangleError < StandardError
  def message
    "Your triangle sides don't make any sense!"
  end
end
