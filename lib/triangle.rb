class Triangle
  # write code here
  def initialize(*sides)
    @sides = []
    for index in 0..2 do
      @sides[index] = sides[index]
    end
  end

  def kind
    if !((@sides[0] + @sides[1]) > @sides[2] && (@sides[1] + @sides[2]) > @sides[0] && (@sides[0] + @sides[2]) > @sides[1]) || @sides.any? { |side| side < 0 }
      raise TriangleError 
    elsif @sides[0] == @sides[1] && @sides[0] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "The sides lengths provided do not constitue a triangle."
  end
end