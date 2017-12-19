class Triangle
  # write code here

  attr_accessor :type, :sideA, :sideB, :sideC

  @types = [:equilateral, :isosceles, :scalene]

  def initialize(sideA, sideB, sideC)
    if sideA > 0 && sideB > 0 && sideC > 0 #(Checks for sides > 0)
      if sideA + sideB <= sideC || sideB + sideC <= sideA || sideA + sideC <= sideB #(Checks for triangle inequality)
        @type
      elsif sideA == sideB && sideB == sideC
        @type = :equilateral
      elsif (sideA == sideB && sideA != sideC) || (sideA == sideC && sideA != sideB) || (sideB == sideC && sideB != sideA)
        @type = :isosceles
      elsif sideA != sideB && sideA != sideC && sideB != sideC
        @type = :scalene
      end
    end
  end

  def kind
    #puts "type = #{@type}"
    if @type == :equilateral || @type == :isosceles || @type == :scalene
      @type
    else
      begin
        raise TriangleError
      end
    end
  end

end

class TriangleError < StandardError
end
