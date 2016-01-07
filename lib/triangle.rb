class Triangle


  def initialize(len_1, len_2, len_3)
    @len_1 = len_1
    @len_2 = len_2
    @len_3 = len_3
  end

  def kind
    if @len_1 == 0 || @len_2 == 0|| @len_3 ==0 ||@len_1 >= (@len_2 + @len_3) || @len_2 >= (@len_1 + @len_3) || @len_3 >= (@len_1 + @len_2)
      raise TriangleError
    elsif @len_1 == @len_2 && @len_2 == @len_3
      :equilateral
    elsif @len_1 == @len_2 || @len_1 == @len_3 || @len_2 == @len_3
      :isosceles
    else
      :scalene
    end
  end

end


class TriangleError < StandardError
 # triangle error code
end