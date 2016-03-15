class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @side_array = [@side_one, @side_two, @side_three]
  end

  def kind
    if valid? && tri_inequality?
      case @side_array.uniq.count
        when 3 then return :scalene
        when 2 then return :isosceles
        when 1 then return :equilateral
      end
    else
      raise TriangleError
      puts error.message
    end
  end

  def valid?
    @side_array.all?{|side| side > 0}
  end

  def tri_inequality?
    @side_array[0] + @side_array[1] > @side_array[2] &&
    @side_array[1] + @side_array[2] > @side_array[0] &&
    @side_array[2] + @side_array[0] > @side_array[1]
  end
end

class TriangleError < StandardError
  def message
    "All sides must be greater than 0 and any 2 sides added together must be larger than the 3rd."
  end
end