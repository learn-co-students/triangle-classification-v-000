require "pry"

class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    @lengths = [@length_1, @length_2, @length_3]
  end

  def kind

    if @lengths.any? {|e| e <= 0} || @lengths.sort[0] + @lengths.sort[1] <= @lengths.sort[2]
      begin
        raise TriangleError
          puts TriangeError.message
      end

    elsif @lengths.uniq.length == 1
      :equilateral

    elsif @lengths.uniq.length == 2
      :isosceles

    elsif @lengths.uniq.length == 3
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "not a valid triangle"
  end
end
