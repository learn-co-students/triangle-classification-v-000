

class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(a, b, c)
    @side_1 = a
    @side_2 = b
    @side_3 = c

  end

  def kind
        if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError

    elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
      raise TriangleError
    end


    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3  
      :isosceles
    else @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    end




  end

end


class TriangleError < StandardError

  end
