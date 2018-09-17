class Triangle
  attr_accessor :s1, :s2, :s3, :kind     #reader up here

  def initialize(s1, s2, s3)     #writer/setter over here
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s1 + s3) <= s2 || (s2 + s3) <= s1
      begin
        raise TriangleError
          puts error.message
        end

    elsif s1 == s2 && s1 == s3
      self.kind = :equilateral

    elsif s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles

    else
      self.kind = :scalene
    end
  end
end



 class TriangleError < StandardError
   def message
     #triangle error code
   end
 end

#exception class is like the master class
#standarderror is like a subclass
#our triangleerror will be a child of standarderror
