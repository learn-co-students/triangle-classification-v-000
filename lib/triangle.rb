class Triangle
  attr_accessor :sides, :equilateral, :isosceles, :scalene
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides = @sides.sort
  end

  def kind
    if !valid?
      begin
        raise TriangleError
      end
    else
      if @sides[0] == @sides[1] && @sides[0] == @sides[2]
        return :equilateral
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
        return :isosceles
      else
        return :scalene
      end
    end
  end

  def valid?
    if @sides.length != 3
      return false
    elsif @sides[0] + @sides[1] <= @sides[2]
      return false
    elsif @sides.any? {|side| side <= 0 }
      return false
    else
      return true
    end
  end
end

class TriangleError < StandardError

end
