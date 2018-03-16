class Triangle 
  # write code here

attr_reader :one, :two, :three

  def initialize(one,two,three)
    @one = one
    @two = two
    @three = three
  end


  def kind
    if (@one <= 0 || @two <= 0 || @three <= 0)
      raise TriangleError 
    elsif (@one + @two <= @three || @one + @three <= @two ||  @three + @two <= @one)      
      raise TriangleError  
    elsif (@one == @two && @one == @three )
      :equilateral
    elsif (@one != @two && @one != @three && @two != @three)
      :scalene
    else
      :isosceles
    end
  end

end


class TriangleError < StandardError
  def message 
    "Triangle Error Test"
  end
end