class Triangle

  attr_accessor :type
  attr_reader :sides

  def initialize(side_1, side_2, side_3)
    @sides = []
    @sides.push(side_1, side_2, side_3).sort!
  end

  def kind
    if self.sides[0] <= 0 || self.sides[0] + self.sides[1] <= self.sides[2]
        raise TriangleError
    else
      array = self.sides.uniq
      case array.length
      when 1 then self.type = "equilateral".to_sym
      when 2 then self.type = "isosceles".to_sym
      when 3 then self.type = "scalene".to_sym
      end
    end
    self.type
  end
end


class TriangleError < StandardError
  def message
    "These dimensions do not make a valid triangle."
  end
end
