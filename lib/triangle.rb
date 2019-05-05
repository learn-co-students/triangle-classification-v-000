class Triangle

  attr_accessor :side_1, :side_2, :side_3, :kind

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if (@side_1 * @side_2 * @side_3) == 0 || (@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || (@side_2 + @side_3) <= @side_1
      begin
          raise TriangleError
          puts error.message
        end
    elsif @side_1 == @side_2 && @side_2 == @side_3
      self.kind = :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      self.kind = :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      self.kind = :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "This triangle is illegal"
    end
  end

end
