class Triangle

  attr_accessor :s1, :s2, :s3
  attr_reader :sides


  def initialize(s1,s2,s3)
    @sides = [] << s1 << s2 << s3 
  end

  def greater_than_zero?
    sides.all? { |el| el > 0 }
  end

  def two_sides_higher? 
    sides[0..1].inject(:+) > sides.last && sides[1..2].inject(:+) > sides.first && sides.first + sides.last > sides[1]
  end

  def equal_sides_count?
    sides.count(sides.max_by { |el| sides.count(el) } )
  end

  def kind
    if equal_sides_count? == 3 && greater_than_zero? && two_sides_higher?
      :equilateral
    elsif equal_sides_count? == 2 && greater_than_zero? && two_sides_higher?
      :isosceles
    elsif 
      equal_sides_count? == 1  && greater_than_zero? && two_sides_higher?
      :scalene
    else 
      raise TriangleError
      puts error.message
    end
  end

end


class TriangleError < StandardError
  def message
    "triangle invalid!"
  end
end