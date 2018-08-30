class Triangle 
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(s1, s2, s3)
    @triangle_side = []
    @triangle_side << s1
    @triangle_side << s2
    @triangle_side << s3
  end  
  
  def valid?
    sum_s1_s2 = @triangle_side[0] + @triangle_side[1]
    sum_s1_s3 = @triangle_side[0] + @triangle_side[2]
    sum_s2_s3 = @triangle_side[1] + @triangle_side[2]
    if (@triangle_side.none? {|side| side <= 0}) && (sum_s1_s2 >
      @triangle_side[2] && sum_s1_s3 > @triangle_side[1] &&
      sum_s2_s3 > @triangle_side[0])
      return TRUE
    else
      return FALSE
    end
  end
    
  
  def kind
    if valid?
      if @triangle_side.uniq.length == 1
       :equilateral
      elsif @triangle_side.uniq.length == 2
        :isosceles
      else
       :scalene
    end
  else 
    raise TriangleError
  end
end
end
 class TriangleError<StandardError 
end
