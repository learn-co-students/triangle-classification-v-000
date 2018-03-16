class Triangle
	attr_reader :s1, :s2, :s3

	def initialize(s1, s2, s3)
		@s1 = s1
		@s2 = s2
		@s3 = s3
	end
  # write code here

  	def kind
  	if(!valid_triangle(s1, s2, s3))
    raise TriangleError
  		end
    if s1==s2 && s2==s3
    	:equilateral
    elsif s1==s2 || s2==s3 || s1==s3
      	:isosceles
    else
      	:scalene
    end
  end

   def valid_triangle(s1, s2, s3)
    if(s1 > 0 && s2 > 0 && s3 > 0)
      if (s1 + s2 > s3 && s1 + s3 > s2 && s2 + s3 > s1)
          true
        end
    end
	end
end

class TriangleError < StandardError
 # triangle error code
 "This is not a real triangle."
end