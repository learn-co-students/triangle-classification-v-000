class Triangle
#push all triangle sides into an array
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = []
    @sides[0] = side1
    @sides[1] = side2
    @sides[2] = side3
  end

  def kind #returns the type of triangle it is
    #sort array. if sorted[0]+sorted[1] < sorted[2]
    #side 1,2,3 all have to be larger than 0
    #if uniq size = 1 then its equilateral, if uniq size = 3 then it's scalene
    sorted = @sides.sort
    type = @sides.uniq
    if sorted[0] + sorted[1] <= sorted[2] || sorted.any?{ |side| side <= 0 }
      raise TriangleError
    elsif type.count == 1
      :equilateral
    elsif type.count == 3
      :scalene
    else
      :isosceles
    end
  end
end

class TriangleError< StandardError

end

#isosceles = two equal sides
#scalene = no equal sides
#equilateral = all equal sides
