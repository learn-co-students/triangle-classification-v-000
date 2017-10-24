class Triangle
  attr_accessor :side_1, :side_2, :side_3
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    kind = nil

    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    end

    if (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_1 + @side_3) <= @side_2
      raise TriangleError
    end

    if @side_1 == @side_2 && @side_2 == @side_3 && @side_1 == @side_3
      kind = :equilateral
      return kind
    end

    if @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      kind = :isosceles
      return kind
    end

    if @side1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      kind = :scalene
      return kind
    end


  end




end

class TriangleError < StandardError
end
