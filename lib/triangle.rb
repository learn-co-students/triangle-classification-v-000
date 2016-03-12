class Triangle

  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if length1 > 0 && length2 > 0 && length3 > 0
      if length1 == length2 && length1 == length3 && length2 == length3
       `:equilateral`
     elsif length1 == length2 || length1 == length3 || length2 == length3 
       `:isosceles`  
     else length1 != length2 && length1 != length3 && length2 != length3 
        `:scalene` 
      end
    else 
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    end
  end
end

class TriangleError < StandardError
  def message 
    "you must give the get_married method an argument of an instance of the person class!"
  end
end  