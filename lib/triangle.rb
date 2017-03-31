class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
  end

  def kind
    if validate_side_lengths
      if @side_a == @side_b && @side_a == @side_c
        :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      else
        :scalene
      end
    end
  end

  def validate_side_lengths
    unless @side_a > 0 && @side_b > 0 && @side_c > 0 && validate_traingle_ineq
      begin
        raise TriangleError
      end
    else
      true
    end
  end

  def validate_traingle_ineq
    if @side_a + @side_b <= @side_c
      false
    elsif @side_a + @side_c <= @side_b
      false
    elsif @side_b + @side_c <= @side_a
      false
    else
      true
    end
  end

end

class TriangleError < StandardError

  # def message
  #   "The sides you entered do not form a valid traingle."
  # end

end
