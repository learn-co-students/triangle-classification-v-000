class Triangle
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind 
  @one, @two, @three = [@one, @two, @three].sort
  raise TriangleError if @one <= 0 or @two + @two <= @three
  return :equilateral if @one == @three
  return :isosceles if @one == @two or @two == @three
  return :scalene
    
  end


class TriangleError < StandardError


  end
end
