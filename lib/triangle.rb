class Triangle
  attr_reader :n1, :n2, :n3

  def initialize(n1, n2, n3)
      @n1 = n1
      @n2 = n2
      @n3 = n3
  end

  def kind
    if valid && @n1 == @n2 && @n2 == @n3
      :equilateral
    elsif valid && @n1 == @n2 || @n2 == @n3 || @n1 == @n3
      :isosceles
    elsif valid
      :scalene
    else
      raise TriangleError
    end
  end

  def valid
    if @n1 > 0 && @n2 > 0 && @n3 > 0 && @n1 + @n2 > @n3 && @n2 + @n3 > @n1 && @n1 + @n3 > @n2
      true
    else
      raise TriangleError
    end
  end


end

class TriangleError < StandardError
end
