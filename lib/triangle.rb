class Triangle
  attr_reader :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [side_one, side_two, side_three]
  end

  def kind
    side_array = @sides.sort!


    sum_1 = side_one + side_two   
    sum_2 = side_two + side_three
    sum_3 = side_three + side_one

    raise TriangleError if side_array.include?(0) || side_array.any? {|num| num <= 0}       #triangle inequality principle, and each side must be larger than 0
    raise TriangleError if sum_2 <= side_one || sum_3 <= side_two || sum_1 <= side_three
  
    return :equilateral if side_array[0] == side_array[1] && side_array[0] == side_array[2]
    return :isosceles if side_array[0] != side_array[1] && side_array[0] != side_array[2] && side_array[1] == side_array[2]
    return :scalene if side_array[0] != side_array[1] && side_array[1] != side_array[2]
  
  end
end

class TriangleError < StandardError
  def message
     puts "This is an invalid triangle!"
  end
end

