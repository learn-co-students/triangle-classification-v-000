class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    checkpoint
    
    if (one == two && two == three)
      :equilateral
    elsif (one == two || one == three || two == three)
      :isosceles
    else
      :scalene
    end
    
  end
  
  def checkpoint
    is_triangle = true
    [one, two, three].each {|number| is_triangle = false if number <= 0}
    is_triangle = false if !(one + two > three) || !(one + three > two) || !(two + three > one) 
    raise TriangleError if is_triangle == false
  end
  
  class TriangleError < StandardError
    
  end
end
