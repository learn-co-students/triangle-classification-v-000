class Triangle
  attr_reader :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if @length_one<=0 || @length_two<=0 || @length_three<=0 ||
      @length_one + @length_two <= @length_three ||
      @length_one + @length_three <= @length_two ||
      @length_one >= @length_two + @length_three
      begin
        raise TriangleError
      end
    elsif @length_one==@length_two && @length_two==@length_three &&
      @length_one > 0 && @length_two > 0 && @length_three > 0
      :equilateral
    elsif @length_one < @length_two && @length_two==@length_three
      :isosceles
    elsif @length_one==@length_two && @length_two > @length_three
      :isosceles
    elsif @length_one==@length_three && @length_three > @length_two
      :isosceles
    elsif @length_one!=@length_two && @length_two!=@length_three
      :scalene
    end
  end
end

class TriangleError < StandardError
end
