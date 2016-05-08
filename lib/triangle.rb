class Triangle
  # write code here
  attr_accessor :kind, :side_one, :side_two, :side_three

  def initialize(one, two, three)
    @side_one = one
    @side_two = two
    @side_three = three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      raise TriangleError 
    else
      if @side_one == @side_two && @side_two == @side_three
        @kind = :equilateral
      elsif @side_one == @side_two || @side_two == @side_three || @side_one == @side_three 
        @kind = :isosceles  
      else 
        @kind = :scalene  
      end
    end 
    @kind
  end
end

class TriangleError < StandardError
  
end