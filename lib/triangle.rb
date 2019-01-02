class Triangle
  
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1.to_i
    @length2 = length2.to_i
    @length3 = length3.to_i
  end
  
  
  def kind 
    
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
