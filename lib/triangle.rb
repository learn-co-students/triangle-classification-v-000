class Triangle
  attr_accessor :short, :mid, :long, :type

  def initialize(a, b, c)
    @sides_array = [a, b, c].sort
    @short = @sides_array[0]
    @mid = @sides_array[1]
    @long = @sides_array[2]

    if @sides_array.any? { |e| e == 0 } || @long >= @mid + @short
      begin
        raise TriangleError
      rescue TriangleError => error
        puts TriangleError.message
      end
    else
      @short = @sides_array[0]
      @mid = @sides_array[1]
      @long = @sides_array[2]
    end
  end

  def kind
    if @short == @mid
      if @mid == @long
        @type = :equilateral
      else
        @type = :isosceles
      end
    elsif @mid == @long
      @type = :isosceles
    else
      @type = :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "The given side lengths are not compatible with triangle formation.  No side may be 0 length, and no side may be longer than the sum of the others."
  end
end
