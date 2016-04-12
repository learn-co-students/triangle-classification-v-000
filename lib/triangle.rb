class Triangle
  
  attr_accessor :left, :right, :bottom
  
  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end
  
  def kind
    if (left + right) <= bottom || (left + bottom) <= right || (right + bottom) <= left || left <= 0 || right <= 0 || bottom <= 0
      raise TriangleError
      #begin
      #  raise TriangleError
      #rescue TriangleError => error
      #  puts error.message
      #end
    elsif left == right && left == bottom
      return :equilateral
    elsif (left == right && left != bottom) || (left == bottom && left != right) || (right == bottom && bottom != left)
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "The triangle as defined has invalid size specifications."
  end
end