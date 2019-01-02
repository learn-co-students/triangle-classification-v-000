class Triangle

  # s1, s2, s3 are lengths of the 3 sides
  attr_accessor :s1, :s2, :s3, :sides

  def initialize(s1, s2, s3)
    @s1 = s1.to_i
    @s2 = s2.to_i
    @s3 = s3.to_i
    @sides = [s1, s2, s3]
  end
  # kind method
#  compute 2 validity tests
#  if all side lengths > 0 valid test 1 == true
#    take samples of 2 from sides array, sum them and see if > other side
#  output kind of triangle


  def kind
    if !(s1 > 0 && s2 > 0 && s3 > 0)
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message1
      end
    elsif
      s1 > 0 && s2 > 0 && s3 > 0
        yield self.tri_inequal(s1,s2,s3)
    end

    # kind tests
    if s1 == s2 == s3
      :equilateral
    elsif s1 != s2 != s3
      :scalene
    else
      :isoceles
    end
  end # kind method

  def tri_inequal(s1, s2, s3)
    test = []
    test << (a[0] < a[1] + a[2])
    test << (a[1] < a[0] + a[2])
    test << (a[2] < a[1] + a[2])
    if test.all?(true)
      self.kind
    else
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message2
      end
    end
  end #tri_inequal method


  class TriangleError < StandardError
    def message1
      "Not a valid triangle: all lengths must be > 0"
    end

    def message2
      "Not a valid triangle: sum of 2 lengths not > 3rd length"
    end
  end

end # class Triangle end
