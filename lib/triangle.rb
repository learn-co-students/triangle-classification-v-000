class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if self.valid? == false
      raise TriangleError
    end
    self.type
  end

  def type
    if @side_one == @side_two && @side_one == @side_three
      return :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      return :isosceles
    else
      return :scalene
    end
  end

  def valid?
    self.positive? && self.actually_tri?
  end

  def actually_tri?
    @side_one + @side_two > @side_three && @side_one + @side_three > @side_two && @side_two + @side_three > @side_one
  end

  def positive?
    @side_one > 0 && @side_two > 0 && @side_three > 0
  end

end

class TriangleError < StandardError
  def message
    "The sides provided do not make a triangle in our current reality."
  end
end