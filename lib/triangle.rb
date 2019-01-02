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
  compute 2 validity tests
  if all side lengths > 0 valid test 1 == true
    take samples of 2 from sides array, sum them and see if > other side
  output kind of triangle

  def kind
    def tri_inequal()
	     test = []
	     test << (a[0] < a[1] + a[2])
	     test << (a[1] < a[0] + a[2])
	     test << (a[2] < a[1] + a[2])
	     if test.all?(true)
		           self.kind
	            else
		              raise TriangleError
	               end
               end
    self.sum = @length1 + @length2 + @length3
    #isoceles


    # begin
        if
    #     raise TriangleError
    #     rescue TriangleError => error
    #     puts error.not_tri
    # end

  class TriangleError < StandardError
    def not_tri_zero
      "Not a valid triangle: all lengths must be > 0"
    end

    def not_tri_length
      "Not a valid triangle: sum of 2 lengths always > 3rd length"
    end
end
