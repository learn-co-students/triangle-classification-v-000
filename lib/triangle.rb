class Triangle
  def initialize(a, b, c)
    if a + b <= c || b + c <= a || c + a <= b || a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else
      @a, @b, @c = a, b, c
    end
  end

  def kind
    if @a != @b && @b != @c && @c != @a
      :scalene
    elsif @a == @b && @b == @c
      :equilateral
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      puts "This is an invalid triangle."
    end
  end

end
