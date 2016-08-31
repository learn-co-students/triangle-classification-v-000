class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def meets_inequality?
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end

  def is_positive?
    side1 > 0 && side2 > 0 && side3 > 0
  end

  def is_nonzero?
    side1 != 0 && side2 != 0 && side3 !=0
  end

  def is_valid?
    self.is_positive? && self.is_nonzero? && self.meets_inequality?
  end

  def is_scalene?
    self.side1 != self.side2 && self.side2 != self.side3 && self.side1 != self.side3
  end

  def is_isosceles?
    self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
  end

  def is_equilateral?
    self.side1 == self.side2 && self.side2 == self.side3
  end

  def kind #returns :equilateral, :isosceles, :scalene, or error depending on type of triangle
    if self.is_valid? == false
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #  error.message
      #end
    elsif self.is_equilateral?
      :equilateral
    elsif self.is_isosceles?
      :isosceles
    else self.is_scalene?
      :scalene
    end
  end
end




class TriangleError < StandardError

  def message
    "The lengths of your sides violates the Triangle Inequality Principle.  Make adjustments, and remember: lengths have to be positive, nonzero values!"
  end

end
