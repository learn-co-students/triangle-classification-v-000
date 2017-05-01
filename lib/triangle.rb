class Triangle
  attr_reader :all

  def initialize(side1, side2, side3)
    @all = [side1, side2, side3]
  end

  def inequality?
    arr = @all.sort!
    arr[0] + arr[1] > arr[2]
  end

  def zero_or_negative?
    @all.any? { |s| s <= 0 }
  end

  def kind
    if self.zero_or_negative? || !self.inequality?
      raise TriangleError
    elsif @all.uniq.length == 1
      :equilateral
    elsif @all.uniq.length == 2
      :isosceles
    elsif @all.uniq.length == 3
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Danger Captain Kirk, illegal triangle detected!"
  end
end
