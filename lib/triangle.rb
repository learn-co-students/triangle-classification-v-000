
class Triangle

  attr_accessor :type, :length_1, :length_2, :length_3
  # triangle code

  def initialize (length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    zeroes
    inequality
    if @length_1 == @length_2 && @length_1 == @length_3
      self.type = :equilateral
    elsif @length_2 == @length_3 || @length_1 == @length_3 || @length_1 == @length_2
      self.type = :isosceles
    else
      self.type = :scalene
    end
  end


  def zeroes
    if @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0
        raise TriangleError
      end
  end

  def inequality
    if @length_1 + @length_2 <= @length_3 || @length_1 + @length_3 <= @length_2 || @length_2 + @length_3 <= @length_1
        raise TriangleError
      end
  end

  class TriangleError < StandardError
    def message
      "you twat - you suck at coding!"
    end
  end
end
