class Triangle
  attr_reader :kind

  def initialize(side1,side2,side3)
      @sides = [side1,side2,side3]
      if @sides.any? { |side| side <= 0 } || !self.triangle_inequality
        # begin
          raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        # end
      else
        self.what_kind_of_triangle
      end

  end

  def what_kind_of_triangle
    if @sides.uniq.length == 1
      @kind = :equilateral
    elsif @sides.uniq.length == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end

  end

  def triangle_inequality
    @sides.max * 2 < @sides.reduce(:+)
  end
end

class TriangleError < StandardError
    def message
      "Object is not a valid triangle"
    end
end
