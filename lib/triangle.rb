class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    valid
    if (length1 == length2) && (length2 == length3)
      :equilateral
    elsif (length1 != length2) && (length2 == length3)
      :isosceles
    elsif (length2 != length3) && (length1 == length3)
      :isosceles
    elsif (length1 != length3) && (length1 == length2)
      :isosceles
    elsif (length1 != length2) && (length2 != length3) && (length1 != length3)
      :scalene
    end
  end
  
    def valid
      valid = [(length1 + length2 > length3), (length2 + length3 > length1), (length1 + length3 > length2)]
      [length1, length2, length3].each { |length| valid << false if length <= 0 }
      raise TriangleError if valid.include?(false)
    end

class TriangleError < StandardError
    def self.message
    "Not a valid triangle!"
    end
  end

end