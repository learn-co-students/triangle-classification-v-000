class Triangle
  attr_accessor :length1, :length2, :length3



  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    end

    def kind
    if length1 <= 0 || length2 <= 0 || length3 <= 0
        begin
          raise TriangleError
        end
      elsif length1 + length2 <= length3 || length2 + length3 <= length1 || length1 + length3 <= length2 
        begin
          raise TriangleError
        end
elsif length1 != length2 && length2 != length3 && length1 != length3
       return :scalene
     elsif
       length1 == length2 && length2 == length3
       return :equilateral
     elsif length1 == length2 || length2 == length3 || length1 == length3
       return :isosceles

       else
         false
       end
     end

end

class TriangleError < StandardError
  def message
    "invalid triangle: please look up the definition of a triangle."
  end
end
