class Triangle
  attr_accessor :name, :sides

  def initialize(a, b, c)
    @name = name
    @sides = [a, b, c].sort #sorts integers smallest to largest
    guard_against_invalid_lengths
  end

  def kind
    case @sides.uniq.size #checks to see how many unique sized side the triangle has
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
    end
  end

  private
    def guard_against_invalid_lengths
      if @sides.any? { |x| x <= 0 } #checks to see if any sides are less than or equal to 0
        raise TriangleError, "Sides must be greater than 0"
      end

      if @sides[0] + @sides[1] <= @sides[2] #add index 0 and 1, checks if sum is less than or equal to index 2
        raise TriangleError, "Not valid triangle lengths"
      end
   end
end

class TriangleError < StandardError
 #nothing needed here for this to work
end
