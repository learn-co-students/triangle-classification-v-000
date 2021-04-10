class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @arr = [a, b, c].sort
  end

  def kind
    if @arr.min <= 0 || @arr[2] >= @arr[0] + @arr[1]
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end

end
