class Triangle
  
  def initialize(side_one, side_two, side_three)
    @sides = [side_one, side_two, side_three]
  end

  def kind
     is_valid?    
      case @sides.uniq.count
        when 1
         :equilateral
        when 2
         :isosceles
        when 3
         :scalene
    end  
  end

  def is_valid?
    real_triangle = [(@sides[0] + @sides[1] > @sides[2]),
        (@sides[0] + @sides[2] > @sides[1]), 
        (@sides[1] + @sides[2] > @sides[0])]
    @sides.each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

end

class TriangleError < StandardError
end