class Triangle
  def initialize(l1,l2,l3)
    @lengths= [l1,l2,l3]
    @lengths.sort!
  end

  def kind
    if @lengths[0]+@lengths[1] <= @lengths[2] 
      raise TriangleError
    elsif @lengths[0] == @lengths[2]
      :equilateral
    elsif @lengths[0] == @lengths[1] || @lengths[1] == @lengths[2]
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
