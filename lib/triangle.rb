class Triangle
  # write code here
  attr_accessor :sides
  
  def initialize(one, two, three)
    @sides = [one, two, three]
  end
  
  def kind
    tri_ineq = self.sides[0] + self.sides[1] > self.sides[2] && self.sides[0] + self.sides[2] > self.sides[1] && self.sides[1] + self.sides[2] > self.sides[0]
    if self.sides.all? { |x| x > 0 } && tri_ineq
      if self.sides.uniq.size == 1
        :equilateral
      elsif self.sides.uniq.size == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    def message
      "stuff stuff stuff"
    end
  end
end
