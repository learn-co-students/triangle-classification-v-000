class Triangle

attr_accessor :side1, :side2, :side3

def initialize(attributes)
  attributes.each {|key, value| self.send(("#{key}="), value)}
end


def initialize(side1, side2, side3)
  @side1 = side1
    @side2 = side2
      @side3 = side3
end

def invalid_triangle
  if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
    true
  elsif (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
    true
end
end

def kind
if invalid_triangle
  raise TriangleError
elsif @side1 == @side2  && @side2 != @side3|| @side2 == @side3 && @side3 != @side1 || @side3 == @side1 && @side1 != @side2
  :isosceles
elsif @side1 == @side2 && @side2 == @side3
:equilateral
else
  :scalene
end
end

end

class TriangleError < StandardError
end
