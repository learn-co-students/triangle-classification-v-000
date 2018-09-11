class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one == 0 || @two == 0 || @three == 0
      begin
        raise TriangleError
      end
    elsif @one < 0 || @two < 0 || @three < 0
      begin
        raise TriangleError
      end
    elsif !(@one + @two > @three) || !(@two + @three > @one) || !(@three + @one > @two)
      begin
        raise TriangleError
      end
    elsif @one == @two && @two == @three
      return  :equilateral
    elsif @one == @two || @two == @three || @one == @three
      return :isosceles
    elsif @one != @two && @two != @three && @one != @three
      return :scalene
    end
  end

  #triangle code
  class TriangleError < StandardError
    def message
      return self
    end
  end

end
