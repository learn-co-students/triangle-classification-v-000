class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one, @two, @three = one, two, three
  end

  def valid_triangle?
    valid = true 

    [one, two, three].each { |x| valid = false if x <= 0 }
    valid = false if ((one+two) <= three) || ((one+three) <= two) || ((two+three) <= one)

    valid
  end

  def kind 
    raise TriangleError if !valid_triangle?

    if (one == two) && (one == three)
      :equilateral
    elsif (one == two) || (one == three) || (two == three)
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end