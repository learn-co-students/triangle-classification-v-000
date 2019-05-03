class Triangle
 
  def initialize(side_A, side_B, side_C)
    @triangle_sides = []
    @triangle_sides << side_A
    @triangle_sides << side_B
    @triangle_sides << side_C
  end

  def isvalid?
    sum_A_B = @triangle_sides[0] + @triangle_sides[1]
    sum_A_C = @triangle_sides[0] + @triangle_sides[2]
    sum_B_C = @triangle_sides[1] + @triangle_sides[2]
    if (@triangle_sides.none? {|side| side <= 0}) &&
      (sum_A_B > @triangle_sides[2] && sum_A_C > @triangle_sides[1] && sum_B_C > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if isvalid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
      else
        raise TriangleError
      end
    end
 
  class TriangleError < StandardError  
  end
  
end
