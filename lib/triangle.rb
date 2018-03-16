require 'pry'
class Triangle
  attr_accessor :sides

  def initialize(one, two, three)
    @sides = [one,two,three]
    @sides.sort!
  end

  def kind
    if self.sides[0] + self.sides[1] <= self.sides[2] || self.sides.detect{|side| side <= 0}
      #binding.pry
        raise TriangleError
    else
      if self.sides[0] == self.sides[1] && self.sides[1] == sides[2]
      :equilateral
      elsif self.sides[0] == self.sides[1] || self.sides[1] == self.sides[2]
        :isosceles
      else
        :scalene
      end
    end
  end #def

end

class TriangleError < StandardError
end
