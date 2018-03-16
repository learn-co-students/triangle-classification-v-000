class TriangleError < StandardError
  def message
    "This is an invalid triangle"
  end
end

class Triangle
  # write code here
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def sides
    [@first, @second, @third]
  end

  def valid?
    if self.sides.any? { |e| e == 0 }
      true
    elsif @first + @second <= @third
      true
    elsif @second + @third <= @first
      true
    elsif @third + @first <= @second
      true
    else
      false
    end
  end

  def kind
    if valid?
        raise TriangleError
    elsif self.sides.all? { |e| e == @first }
        :equilateral
    elsif self.sides.any? {|e| self.sides.count(e) == 2 }
      :isosceles
    else
      :scalene
    end
  end
end




