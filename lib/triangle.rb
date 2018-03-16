class Triangle
  # write code here
  attr_reader :sides
  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    self.valid?
    kind = self.sides.uniq.size
    if kind == 1
      :equilateral
    elsif kind == 2
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    t = self.sides
    valid = [(t[0] + t[1] > t[2]), (t[0] + t[2] > t[1]), (t[1] + t[2] > t[0])]
    t.each {|side| valid << false if side <= 0}
    raise TriangleError if valid.include?(false)
  end
end

class TriangleError < StandardError
end
