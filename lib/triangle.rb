class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort 
  end
  
  def kind
    invalid? ? triangle_error : type
  end
  
  private
  def triangle_error
      raise TriangleError
  end
  
  def type
    if sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  def invalid?
    if sides.any?{ |i| i <= 0 }
      true
    elsif sides[2] >= (sides[0] + sides[1])
      true
    else
      false
    end
  end
end

class TriangleError < StandardError
  def message
    puts "Your triangle is invalid."
  end
end