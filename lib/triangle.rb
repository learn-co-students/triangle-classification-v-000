class Triangle 
  # write code here

TYPE = [:equilateral,:isosceles,:scalene]  


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
      begin
        raise TriangleError 
      #rescue TriangleError => error
        #puts error.message
      end
    elsif (@one == @two && @one == @three )
      TYPE[0]
    elsif (@one != @two && @one != @three && @two != @three)
      TYPE[2]
    else
      TYPE[1]
    end
  end

end


class TriangleError < StandardError
      def message 
        "Triangle Error Test"
      end
end