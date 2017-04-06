class Triangle
  attr_accessor :line_1, :line_2, :line_3
  def initialize(line_1, line_2, line_3)
    @line_1 = line_1
    @line_2 = line_2
    @line_3 = line_3
  end

  def kind
    sum = self.line_1 + self.line_2 + self.line_3
    max = [self.line_1, self.line_2, self.line_3].max
    if self.line_1 <=0 || self.line_2 <=0 || self.line_3 <=0
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   end
    elsif
          sum - max <= max
          # begin
            raise TriangleError
          # rescue TriangleError => error
          #   end
    elsif self.line_1 == self.line_2 && self.line_2 == self.line_3
      :equilateral
    elsif self.line_1 == self.line_2 || self.line_2==self.line_3 || self.line_3 ==self.line_1
      :isosceles
    else
      :scalene
    end
  end


end

class TriangleError < StandardError
end
