class Triangle
  
  def initialize(side_1, side_2, side_3)
    @triangle = []
    @triangle << side_1
    @triangle << side_2
    @triangle << side_3
  end
  
  def valid?
    if (@triangle.none? {|side| side <= 0}) &&
    (@triangle[0] + @triangle[1] > @triangle[2] && 
    @triangle[0] + @triangle[2] > @triangle[1] &&
    @triangle[1] + @triangle[2] > @triangle[0])
      true
    else
      false
    end
  end
  
  def kind
    if valid?
      if @triangle.uniq.length == 1
        :equilateral
      else if @triangle.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
    else
      raise TriangleError
    end
  end
  
end

class TriangleError < StandardError
  
end