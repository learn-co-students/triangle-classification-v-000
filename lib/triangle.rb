class Triangle
  def initialize(a,b,c)
    @side = [a, b, c].sort
  end
  
  def kind
    if @side[0] + @side[1] > @side[2]
      if @side[0] == @side[2]
        :equilateral
      elsif @side[0] == @side[1] || @side[1] == @side[2]
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  
end