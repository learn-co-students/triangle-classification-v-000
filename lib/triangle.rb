class Triangle
  # write code here
  attr_accessor :first_length, :second_length, :third_length

def initialize(first_length, second_length, third_length)
  @first_length = first_length
  @second_length = second_length
  @third_length = third_length
end

def kind

if first_length + second_length <= third_length || second_length + third_length <= first_length || first_length + third_length <= second_length
raise TriangleError
  elsif  first_length == second_length && second_length == third_length
  :equilateral
  elsif first_length == second_length || first_length == third_length || second_length == third_length
  :isosceles
  else #first_length != second_length = third_length || second_length != third_length = first_length
  :scalene
end
end
end

class TriangleError < StandardError

end
