class Triangle
  attr_accessor :lengths

  @@kinds = {equilateral: 1, isosceles: 2, scalene:3}

  def kinds
    @@kinds
  end

  def initialize(len1, len2, len3)
    @lengths = []
    lengths << len1
    lengths << len2
    lengths << len3
  end

  def kind
    if lengths[1] + lengths[2] <= lengths[0] ||
    lengths[0] + lengths[1] <= lengths[2] ||
    lengths[2] + lengths[0] <= lengths[1] ||
    lengths.any? { |len| len <= 0  }

      raise TriangleError

    else
      kinds.key(lengths.uniq.length)
    end
  end

end

class TriangleError < StandardError
  def message
    "illegal triangle"
  end
end
