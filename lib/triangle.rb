class Triangle
  attr_accessor :type

  def initialize(length_1, length_2, length_3)
    if length_1 == length_2 && length_1 == length_3
      @type = :equilateral
    elsif length_2 == length_3 || length_1 == length_3 || length_1 == length_2
      @type = :isosceles
    elsif length_1 <= 0 || length_2 <= 0 || length_3 <= 0
      begin
        raise TriangleError
      rescue TriangleError
      end
    else
      @type = :scalene
    end
  end

  def kind
    @type
  end

  class TriangleError < StandardError

  end
end
