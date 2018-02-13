class Triangle
  attr_accessor :sides

  def initialize(a, b, c)
    @sides = [a,b,c]
  end

  def kind
    if valid?
      case sides_equal
      when 3
        :equilateral
      when 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    sides.all? do |i|
      i > 0 &&
      sides.reduce(:+) - i > i  # triangle inequality sum of any 2 sides > 3rd side
    end
  end

  def sides_equal                      # count number of matching sides
    frequency = Hash.new(0)
    sides.each {|i| frequency[i] += 1}
    frequency.values.sort[-1]         # returns biggest frequency
  end
end

class TriangleError < StandardError

end
