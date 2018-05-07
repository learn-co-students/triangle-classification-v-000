class Triangle

attr_accessor :one, :two, :three

def initialize(one, two, three)
  @one = one
  @two = two
  @three = three
end

def kind
  if one == two && two == three
    :equilateral
  elsif one == two || two == three || one == three
    :isosceles
  else
    :scalene
  end
end

end
