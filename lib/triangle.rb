class Triangle
attr_reader :equilateral, :isosceles, :scalene 


  def initialize(equilateral, isosceles, scalene)
  #@length = length
  @equilateral = equilateral 
  @isosceles = isosceles
  @scalene = scalene 
  end 

  def kind 
    valid_triangle?
    if a == b && b == c 
      :equilateral 
    elsif a == b || b == c || a == c 
      :isosceles  
    else 
      :scalene
      end
  end 
  

  def definition_of_triangle
    actual_triangle = [(a + b > c), (a + c > b), (b + c > a)] 
    [a,b,c].each { |x| actual_triangle}
      if [a,b,c] > 0 && actual_triangle
            begin 
        true
            raise TriangleError
      else
        false
            rescue TriangleError
      end 
    end 


        class TriangleError < StandardError
        end 

end      


