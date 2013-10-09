# # Triangle

# Write a program that can tell you if a triangle is equilateral, isosceles, or scalene.

# As a bonus, the program should raise an error if the triangle cannot exist.

# ## Hint

# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side, a principle known as the _triangle inequality_.

## Building and Raising a Custom Error

# Read: 
# http://ruby.about.com/od/advancedruby/qt/quickexceptions.htm
# http://www.skorks.com/2009/09/ruby-exceptions-and-exception-handling/
# http://phrogz.net/programmingruby/tut_exceptions.html
# http://ablogaboutcode.com/2011/01/03/using-custom-error-messages-for-cleaner-code/

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

describe 'Triangle' do

  it 'knows that equilateral triangles have equal sides' do
    Triangle.new(2, 2, 2).kind.should eq(:equilateral)
  end

  it 'knows that larger equilateral triangles also have equal sides' do
    Triangle.new(10, 10, 10).kind.should eq(:equilateral)
  end

  it 'knows that isosceles triangles have last two sides equal' do
    Triangle.new(3, 4, 4).kind.should eq(:isosceles)
  end

  it 'knows that isosceles triangles have first and last sides equal' do
    Triangle.new(4, 3, 4).kind.should eq(:isosceles)
  end

  it 'knows that isosceles triangles have two first sides equal' do
    Triangle.new(4, 4, 3).kind.should eq(:isosceles)
  end

  it 'knows that isosceles triangles have in fact exactly two sides equal' do
    Triangle.new(10, 10, 2).kind.should eq(:isosceles)
  end

  it 'knows that scalene triangles have no equal sides' do
    Triangle.new(3, 4, 5).kind.should eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides at a larger scale too' do
    Triangle.new(10, 11, 12).kind.should eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides in descending order either' do
    Triangle.new(5, 4, 2).kind.should eq(:scalene)
  end

  it 'knows that very small triangles are legal' do
    Triangle.new(0.4, 0.6, 0.3).kind.should eq(:scalene)
  end

  # Bonus Tests
  it 'knows that triangles with no size are illegal' do
    expect{Triangle.new(0, 0, 0).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    expect{Triangle.new(3, 4, -5).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    expect{Triangle.new(1, 1, 3).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    expect{Triangle.new(2, 4, 2).kind}.to raise_error(TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    expect{Triangle.new(7, 3, 2).kind}.to raise_error(TriangleError)
  end

end