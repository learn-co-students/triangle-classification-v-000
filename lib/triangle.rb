class Triangle
  attr_accessor :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    #la chiave sta nel settare  #sort! in modo da rendere la condizione indipendente dall'ordine con cui sono stati forniti i lati!
    @sides.sort!
  end

  def kind

    if self.sides[0] + self.sides[1] <= self.sides[2] || self.sides.detect{|side| side <= 0}
        raise TriangleError
    else
      if self.sides[0] == self.sides[1] && self.sides[1] == self.sides[2]
        :equilateral
      elsif self.sides[0] == self.sides[1] || self.sides[1] == self.sides[2]
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "BLA"
  end

end
