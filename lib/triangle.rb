class Triangle
  attr_accessor :length_1, :length_2, :length_3


  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    end

  def kind
      begin
        if not_valid
         raise TriangleError
       end
       end

     if length_1 == length_2 && length_2 == length_3
        :equilateral

     elsif length_1 == length_2 || length_1 == length_3 || length_2 == length_3
        :isosceles

     else length_1 != length_2 && length_2 != length_3
       :scalene
     end
  end
end

  def not_valid
      length_1 + length_2 <= length_3  ||
      length_2 + length_3 <= length_1  ||
      length_1 + length_3 <= length_2  ||
      length_1 <= 0 || length_2 <= 0 || length_3 <= 0
  end



  class TriangleError < StandardError

  def message
  "This is an invalid triangle"
  end

end
