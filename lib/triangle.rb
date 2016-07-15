class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
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

    valid_triangle =  @length_1 + @length_2 > @length_3 || @length_2 + @length_3 > @length_1 || @length_1 + @length_3 > @length_2 || @lenght_1 > 0 || @length_2 > 0 || @length_3 > 0
      if @length_1 == @length_2 && @length_2 == @length_3 && @length_1 == @length_3
        :equilateral
      elsif @length_1 == @length_2 || @length_1 == @length_3 || @length_2 == @length_3
        :isosceles
      elsif @length_1 != @length_2 && @length_2 != @length_3 && @length_3 != @length_1 && @length_3 != @length_2
        :scalene
      elsif !valid_triangle
        begin
          raise TriangleError # change the error message here
        rescue TriangleError => error #continue after error has been made
        end
      end
  end

end

class TriangleError < StandardError
end
