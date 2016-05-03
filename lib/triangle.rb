class Triangle

  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    triangle = [side_1, side_2, side_3]
    
    if triangle.any? {|s| s == 0}
      raise TriangleError
    elsif triangle.any? {|s| s < 0}
      raise TriangleError
    elsif triangle.uniq.length == 2 && triangle.uniq[0]*2 <= triangle.uniq[1] 
      raise TriangleError
    elsif triangle.sort[0] + triangle.sort[1] < triangle.sort[2]
      raise TriangleError
    elsif triangle.uniq.length == 1
      :equilateral
    elsif triangle.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end