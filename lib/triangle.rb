require "pry"
class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  # def in_valid
  #   @length_1 + @length_2 < @length_3 || @length_2 + @length_3 < @length_1 || @length_1 + @length_3 < @length_2 && @length_1 < 0 || @length_2 < 0 || @length_3 < 0 && @length_1 % 1 != 0 || @length_2 % 1 == 0 || @length_3 % 1 == 0
  # end
  # #
  # def kind
  #     if in_valid
  #        raise TriangleError
  #     elsif @length_1 == @length_2 && @length_2 == @length_3 && @length_1 == @length_3
  #       :equilateral
  #     elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_2 == @length_3
  #       :isosceles
  #     elsif @length_1 != @length_2 && @length_2 != @length_3 && @length_3 != @length_1 && @length_3 != @length_2
  #       :scalene
  #       # binding.pry
  #     end
  # end # end of method
  def in_valid
    array = []
    array.push(@length_1 , @length_2, @length_3)
    array.each_with_index do |length, index|
  end

  def kind

  end

end # end of class

class TriangleError < StandardError
end
# array = []
# array.push(@length_1 , @length_2, @length_3)
# array.each_with_index do |length, index|
#   if length == length[index]
#     :equilateral
#   elsif
#       length[index] == length[index]
#     :isosceles
#   elsif
#     length[index] != length[index]
#     :scalene
#   elsif length = 0 || length < 0 || length[index] + length[index] < length[index]
#     begin
#       raise TriangleError # change the error message here
#     rescue TriangleError => error #continue after error has been made
#     end
#   end
