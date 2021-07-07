class Triangle
  attr_accessor :sides, :one, :two, :three
  
  def initialize(side_one, side_two, side_three)
    @one = side_one
    @two = side_two
    @three = side_three
  end
  
  def kind
    sides_array = [one, two, three]
    while sides_array.all? {|number| number > 0} && one + two > three && one + three > two && two + three > one
      if one == two && two == three
        return :equilateral
      elsif one == two || one == three || two == three
        return :isosceles
      elsif one != two && two != three && one != three
        return :scalene
      end
    end
    raise TriangleError
  end 
  
  class TriangleError < StandardError
  end

end
