class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def kind 
    if self.is_invalid?
      raise TriangleError
    elsif @side1 == @side2
      if @side2 == @side3
        :equilateral
      else
        :isosceles
      end
    elsif @side2 == @side3
      :isosceles
    elsif @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def is_invalid?
    return true if @sides.any? {|side| side<= 0 }
    if @side1 + @side2 <= @side3
      return true
    elsif @side2 + @side3 <= @side1
      return true
    elsif @side1 + @side3 <= @side2
      return true
    else
      return false 
    end
  end

end

class TriangleError < StandardError
  message = "This triangle is invalid"
end
