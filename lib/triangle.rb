class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    all = [@one,@two,@three]
    sorted = all.sort

    if (sorted[0] + sorted[1]) <= sorted[2]
      raise TriangleError
    else
      if all.uniq.length == 1
        return :equilateral
      elsif all.uniq.length != all.length
        return :isosceles
      else
        return :scalene
      end
    end

  end

end


class TriangleError < StandardError

end
