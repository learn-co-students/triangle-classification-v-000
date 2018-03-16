class Triangle
  
  def initialize(a, b, c)
    @sides = [a, b, c].sort
    check_validity  
  end

  def kind
    case @sides.uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
    end
  end

  def check_validity
    if @sides.any? { |x| x <= 0 }
      raise TriangleError, "Sides must be greater than 0"
    end

    if @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError, "Not valid triangle lengths"    
    end
  end
end

  class TriangleError < StandardError 
  end
