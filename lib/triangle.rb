class Triangle
  attr_accessor :sideone, :sidetwo, :sidethree

  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end

  def kind # returns the type of triangle: equilateral, isosceles, scalene
    raise TriangleError if sideone == 0 || sidethree < 0 || sideone + sidetwo < sidethree || sideone + sidethree <= sidetwo || sidetwo + sidethree < sideone
    if sideone == sidetwo && sidetwo == sidethree && sideone == sidethree
      :equilateral
    elsif sideone == sidetwo || sidetwo == sidethree || sideone == sidethree
      :isosceles
    else sideone != sidetwo && sidetwo != sidethree && sideone != sidethree
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "violating the triangle inequality rule is illegal."
    end
  end
end
