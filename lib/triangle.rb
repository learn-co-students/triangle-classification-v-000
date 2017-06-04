class Triangle
  attr_reader :kind

  def initialize(s1, s2, s3)
    @kind = nil
    if s1 > 0 && s2 > 0 && s3 > 0
      if s1 + s2 > s3 && s2 + s3 > s1 && s1 + s3 > s2
        if s1 == s2 && s2 == s3
          @kind = :equilateral
        elsif s1 == s2 || s1 == s3 || s2 == s3
          @kind = :isosceles
        elsif s1 != s2 && s2 != s3
          @kind = :scalene
        end
      end
    end
        
  end

  def kind
    if @kind
      @kind
    else
      raise TriangleError
    end
    
  end

end



class TriangleError < StandardError
 # triangle error code
end