class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if self.valid? == false
      raise TriangleError
    end
    self.type
  end

  def type
    if @one == @two && @one == @three
      return :equilateral
    elsif @one == @two || @one == @three || @two == @three
      return :isosceles
    else
      return :scalene
    end
  end

  def valid?
    self.positive? && self.actually_tri?
  end

  def actually_tri?
    @one + @two > @three && @one + @three > @two && @two + @three > @one
  end

  def positive?
    @one > 0 && @two > 0 && @three > 0
  end

end

class TriangleError < StandardError
  def message
    "The sides provided do not make a triangle in our current reality."
  end
end