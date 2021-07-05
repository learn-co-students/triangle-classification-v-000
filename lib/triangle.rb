class Triangle
  # write code here
 attr_accessor :equilateral,:isosceles,:scalene

def initialize(l1,l2,l3)
@l1 = l1
@l2 = l2
@l3 = l3

end




def kind
  if @l1 <= 0 || @l2 <= 0 || @l3 <= 0
 begin
 raise TriangleError
end
end

if @l1 + @l2 <= @l3 || @l1 + @l3 <= @l2 || @l2 + @l3 <= @l1
  begin
    raise TriangleError
  end
end


if @l2 == @l1 && @l3 == @l1
  return :equilateral
  elsif
   @l2 != @l1 && @l3 != @l1 && @l2 != @l3
    return :scalene
  else
    return :isosceles
end
end


class TriangleError < StandardError


end

end
