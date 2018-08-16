class Triangle
  # write code here
  
  def initialize(side_1, side_2, side_3)
    @triangle = []
    @triangle << side_1
    @triangle << side_2
    @triangle << side_3
  end
  
  def kind
    if(negative? == true || valid? == false)
      raise TriangleError
    else
    end
    
    if
    #elsif
    @triangle.uniq.length == 1
      :equilateral
    elsif
    @triangle.uniq.length == 2
    :isosceles
    elsif
    @triangle[0] != @triangle[1] && @triangle[1] != @triangle[2]
    :scalene
    else
      
    end
      
  end
  
  def valid?
    (@triangle[0] + @triangle[1]> @triangle[2]) && (@triangle[1] + @triangle[2] > @triangle[0]) && (@triangle[0] + @triangle[2] > @triangle[1])
  end
  
  def negative?
    @triangle.each do |length|
      if(length <= 0)
        return true
      end
    end
  end
    
    
    
  class TriangleError < StandardError
  end
end
