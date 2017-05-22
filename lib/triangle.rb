class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if @length_1 > 0 && @length_1 > 0 && @length_3 > 0 && (@length_1 + @length_2) > @length_3 && (@length_2 + @length_3) > @length_1 && (@length_1 + @length_3) > @length_2
      if @length_1 == @length_2 && @length_2 == @length_3
        :equilateral
      elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_3 == @length_2
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end
end


class TriangleError < StandardError
 # triangle error code
end
