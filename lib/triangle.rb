class Triangle

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    a,b,c = [@one,@two,@three].sort
    if a <= 0 || a + b <= c
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || b == c
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end