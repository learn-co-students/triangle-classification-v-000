class Triangle

  def initialize(length1, length2, length3)
    Triangle.new(length1, length2, length3)
    @length1 = length1
    @lenght2 = length2
    @length3 = length3
  end

  def valid?
    @length1 + @length2 > @length3
    @length1 + @length3 > @length2
    @length2 + @length3 > @length1
  end

  def kind
    if self.valid? != true
      begin
       raise TriangleError
      rescue TriangleError => error
       puts error.message
      else
        "no issues with this triangle"
    end
  end

  class TriangleError < StandardError

    def message
     "this is not a valid triangle"
    end

  end



end
