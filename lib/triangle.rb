class Triangle
  attr_accessor :side_one, :side_two, :side_three, :kind

  def initialize(side_one, side_two, side_three)
    @one = side_one 
    @two = side_two
    @three = side_three

    if (@one <= 0 || @two <= 0 || @three <= 0 || @one + @two <= @three || @one + @three <= @two || @two + @three <= @one)
      begin
        raise TriangleError 
      rescue TriangleError => error 
        puts error.message 
        raise error
      end
    else
      if @one == @two && @two == @three
        self.kind = :equilateral
      elsif @one == @two || @one == @three || @two == @three 
        self.kind = :isosceles 
      else
        self.kind = :scalene 
      end
    end
  end
end

class TriangleError < StandardError
  def message 
    "This is an invalid triangle"
  end
end