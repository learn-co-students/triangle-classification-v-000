class Triangle

  attr_accessor :one, :two, :three

 
  def initialize(one, two, three)
    @one = one
    @two = two                       
    @three = three
  end   

  def kind
    if one <= 0 || two <= 0 || three <= 0
      raise TriangleError
    elsif one + two <= three || one + three <= two || two + three <= one
      raise TriangleError  
    elsif one == two && two == three
      :equilateral
    elsif one == two || two == three || one == three
      :isosceles 
    else
      :scalene  
    end
  end  
end


class TriangleError < StandardError


end  


# elsif
#         one != two && two != three && three != one
#         scalene
#       elsif 
#         one == two && one != three ||
#         one == three && one != two
#         isosceles









  # attributes = {one 2,
  #               two 2,
  #               three 2
  #              }