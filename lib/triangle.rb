class Triangle
  # write code here

  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @lengths = []
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three

    @lengths << @length_one
    @lengths << @length_two
    @lengths << @length_three

    if @lengths.include?(0) 
      raise TriangleError
    end

    @lengths.each do |x|
      if x < 0
         raise TriangleError
      end
    end
  end

  def kind
    if (@lengths[0] + @lengths[1] <= @lengths[2]) || (@lengths[1] + @lengths[2] <= @lengths[0]) || (@lengths[0] + @lengths[2] <= @lengths[1])
      raise TriangleError
    end
    if @lengths[0] == @lengths[1] && @lengths[1] == @lengths[2]
      :equilateral
    elsif @lengths[0] == @lengths[1] || @lengths[1] == @lengths[2] || @lengths[0] == @lengths[2]
      :isosceles
    else
      :scalene
    end 
  end
end


class TriangleError < StandardError
 # triangle error code
end