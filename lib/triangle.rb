class Triangle
  
  attr_accessor :sides
  def initialize(side1, side2, side3)
    @sides = []
    @sides[0] = side1
    @sides[1] = side2
    @sides[2] = side3
  end

  def kind

    sorted = @sides.sort
    type = @sides.uniq

    #test triangle inequality:
    #sum of lengths of two sides always exceeds length of 3rd side
    #so, if sum of two smallest sides does not exceed length of 3rd side, raise error

    if (sorted[0] + sorted[1]) <= sorted[2] || sorted.any?{|x| x <= 0}
      raise TriangleError
    elsif type.size == 3
      :scalene
    elsif type.size == 1
      :equilateral
    else
      :isosceles
    end
  end
end

class TriangleError < StandardError

end