# class Triangle
#   # write code here
  
#   def initialize(s_1, s_2, s_3)
#     @s_1 = s_1
#     @s_2 = s_2
#     @s_3 = s_3
#   end
  
#   def kind(type)
#     type
#     raise TriangleError
#   end
  
#   class TriangleError < StandardError
    
#   end
# end

class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end
  
  class TriangleError < StandardError
  # triangle error code
end

end

