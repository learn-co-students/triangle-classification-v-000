class Triangle
  attr_accessor :kind, :sides
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort

    # Raises TriangleError in the following cases:
    #      1- A side was passed in that is not a Fixnum or Float
    #      2- A side was passed and it is 0 or less
    #      3- The sides passed in violate the triangle inequality rule
    if @sides.any?{|s|s <= 0 || (s.class != Fixnum && s.class != Float)} == true || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    end

    # Checks the sides and assigns what kind of triangle this is
    if @sides[0] == @sides[1] && @sides[0] == @sides[2]
      @kind = :equilateral
    elsif (@sides[0] == @sides[1] && @sides[0] != @sides[2]) || (@sides[1] == @sides[2] && @sides[1] != @sides[0])
      @kind = :isosceles
    elsif @sides[0] != @sides[1] && @sides[0] != @sides[2]
      @kind = :scalene
    end

  end
end

class TriangleError < StandardError
  def message
    "A Triangle has to be initialized with 3 sides, all greater than 0. Any 2 sides should be greater than the last side."
  end
end
